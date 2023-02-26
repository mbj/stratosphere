module Stratosphere.AppMesh.Route.GrpcRetryPolicyProperty (
        module Exports, GrpcRetryPolicyProperty(..),
        mkGrpcRetryPolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.Route.DurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GrpcRetryPolicyProperty
  = GrpcRetryPolicyProperty {grpcRetryEvents :: (Prelude.Maybe (ValueList Prelude.Text)),
                             httpRetryEvents :: (Prelude.Maybe (ValueList Prelude.Text)),
                             maxRetries :: (Value Prelude.Integer),
                             perRetryTimeout :: DurationProperty,
                             tcpRetryEvents :: (Prelude.Maybe (ValueList Prelude.Text))}
mkGrpcRetryPolicyProperty ::
  Value Prelude.Integer
  -> DurationProperty -> GrpcRetryPolicyProperty
mkGrpcRetryPolicyProperty maxRetries perRetryTimeout
  = GrpcRetryPolicyProperty
      {maxRetries = maxRetries, perRetryTimeout = perRetryTimeout,
       grpcRetryEvents = Prelude.Nothing,
       httpRetryEvents = Prelude.Nothing,
       tcpRetryEvents = Prelude.Nothing}
instance ToResourceProperties GrpcRetryPolicyProperty where
  toResourceProperties GrpcRetryPolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::Route.GrpcRetryPolicy",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MaxRetries" JSON..= maxRetries,
                            "PerRetryTimeout" JSON..= perRetryTimeout]
                           (Prelude.catMaybes
                              [(JSON..=) "GrpcRetryEvents" Prelude.<$> grpcRetryEvents,
                               (JSON..=) "HttpRetryEvents" Prelude.<$> httpRetryEvents,
                               (JSON..=) "TcpRetryEvents" Prelude.<$> tcpRetryEvents]))}
instance JSON.ToJSON GrpcRetryPolicyProperty where
  toJSON GrpcRetryPolicyProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MaxRetries" JSON..= maxRetries,
               "PerRetryTimeout" JSON..= perRetryTimeout]
              (Prelude.catMaybes
                 [(JSON..=) "GrpcRetryEvents" Prelude.<$> grpcRetryEvents,
                  (JSON..=) "HttpRetryEvents" Prelude.<$> httpRetryEvents,
                  (JSON..=) "TcpRetryEvents" Prelude.<$> tcpRetryEvents])))
instance Property "GrpcRetryEvents" GrpcRetryPolicyProperty where
  type PropertyType "GrpcRetryEvents" GrpcRetryPolicyProperty = ValueList Prelude.Text
  set newValue GrpcRetryPolicyProperty {..}
    = GrpcRetryPolicyProperty
        {grpcRetryEvents = Prelude.pure newValue, ..}
instance Property "HttpRetryEvents" GrpcRetryPolicyProperty where
  type PropertyType "HttpRetryEvents" GrpcRetryPolicyProperty = ValueList Prelude.Text
  set newValue GrpcRetryPolicyProperty {..}
    = GrpcRetryPolicyProperty
        {httpRetryEvents = Prelude.pure newValue, ..}
instance Property "MaxRetries" GrpcRetryPolicyProperty where
  type PropertyType "MaxRetries" GrpcRetryPolicyProperty = Value Prelude.Integer
  set newValue GrpcRetryPolicyProperty {..}
    = GrpcRetryPolicyProperty {maxRetries = newValue, ..}
instance Property "PerRetryTimeout" GrpcRetryPolicyProperty where
  type PropertyType "PerRetryTimeout" GrpcRetryPolicyProperty = DurationProperty
  set newValue GrpcRetryPolicyProperty {..}
    = GrpcRetryPolicyProperty {perRetryTimeout = newValue, ..}
instance Property "TcpRetryEvents" GrpcRetryPolicyProperty where
  type PropertyType "TcpRetryEvents" GrpcRetryPolicyProperty = ValueList Prelude.Text
  set newValue GrpcRetryPolicyProperty {..}
    = GrpcRetryPolicyProperty
        {tcpRetryEvents = Prelude.pure newValue, ..}