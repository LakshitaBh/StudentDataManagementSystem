import type * as grpc from '@grpc/grpc-js';
import type { MessageTypeDefinition } from '@grpc/proto-loader';

import type { SDMS_BackendClient as _SDMS_BackendClient, SDMS_BackendDefinition as _SDMS_BackendDefinition } from './SDMS_Backend';

type SubtypeConstructor<Constructor extends new (...args: any) => any, Subtype> = {
  new(...args: ConstructorParameters<Constructor>): Subtype;
};

export interface ProtoGrpcType {
  GradeReply: MessageTypeDefinition
  GradeRequest: MessageTypeDefinition
  HelloReply: MessageTypeDefinition
  HelloRequest: MessageTypeDefinition
  SDMS_Backend: SubtypeConstructor<typeof grpc.Client, _SDMS_BackendClient> & { service: _SDMS_BackendDefinition }
}
