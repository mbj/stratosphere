module Stratosphere.AppMesh.Route.HttpRetryPolicyProperty (
        module Exports, HttpRetryPolicyProperty(..),
        mkHttpRetryPolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.Route.DurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HttpRetryPolicyProperty
  = HttpRetryPolicyProperty {httpRetryEvents :: (Prelude.Maybe (ValueList Prelude.Text)),
                             maxRetries :: (Value Prelude.Integer),
                             perRetryTimeout :: DurationProperty,
                             tcpRetryEvents :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHttpRetryPolicyProperty ::
  Value Prelude.Integer
  -> DurationProperty -> HttpRetryPolicyProperty
mkHttpRetryPolicyProperty maxRetries perRetryTimeout
  = HttpRetryPolicyProperty
      {maxRetries = maxRetries, perRetryTimeout = perRetryTimeout,
       httpRetryEvents = Prelude.Nothing,
       tcpRetryEvents = Prelude.Nothing}
instance ToResourceProperties HttpRetryPolicyProperty where
  toResourceProperties HttpRetryPolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::Route.HttpRetryPolicy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MaxRetries" JSON..= maxRetries,
                            "PerRetryTimeout" JSON..= perRetryTimeout]
                           (Prelude.catMaybes
                              [(JSON..=) "HttpRetryEvents" Prelude.<$> httpRetryEvents,
                               (JSON..=) "TcpRetryEvents" Prelude.<$> tcpRetryEvents]))}
instance JSON.ToJSON HttpRetryPolicyProperty where
  toJSON HttpRetryPolicyProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MaxRetries" JSON..= maxRetries,
               "PerRetryTimeout" JSON..= perRetryTimeout]
              (Prelude.catMaybes
                 [(JSON..=) "HttpRetryEvents" Prelude.<$> httpRetryEvents,
                  (JSON..=) "TcpRetryEvents" Prelude.<$> tcpRetryEvents])))
instance Property "HttpRetryEvents" HttpRetryPolicyProperty where
  type PropertyType "HttpRetryEvents" HttpRetryPolicyProperty = ValueList Prelude.Text
  set newValue HttpRetryPolicyProperty {..}
    = HttpRetryPolicyProperty
        {httpRetryEvents = Prelude.pure newValue, ..}
instance Property "MaxRetries" HttpRetryPolicyProperty where
  type PropertyType "MaxRetries" HttpRetryPolicyProperty = Value Prelude.Integer
  set newValue HttpRetryPolicyProperty {..}
    = HttpRetryPolicyProperty {maxRetries = newValue, ..}
instance Property "PerRetryTimeout" HttpRetryPolicyProperty where
  type PropertyType "PerRetryTimeout" HttpRetryPolicyProperty = DurationProperty
  set newValue HttpRetryPolicyProperty {..}
    = HttpRetryPolicyProperty {perRetryTimeout = newValue, ..}
instance Property "TcpRetryEvents" HttpRetryPolicyProperty where
  type PropertyType "TcpRetryEvents" HttpRetryPolicyProperty = ValueList Prelude.Text
  set newValue HttpRetryPolicyProperty {..}
    = HttpRetryPolicyProperty
        {tcpRetryEvents = Prelude.pure newValue, ..}