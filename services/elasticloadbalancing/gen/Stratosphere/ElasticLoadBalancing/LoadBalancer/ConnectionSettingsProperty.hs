module Stratosphere.ElasticLoadBalancing.LoadBalancer.ConnectionSettingsProperty (
        ConnectionSettingsProperty(..), mkConnectionSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConnectionSettingsProperty
  = ConnectionSettingsProperty {idleTimeout :: (Value Prelude.Integer)}
mkConnectionSettingsProperty ::
  Value Prelude.Integer -> ConnectionSettingsProperty
mkConnectionSettingsProperty idleTimeout
  = ConnectionSettingsProperty {idleTimeout = idleTimeout}
instance ToResourceProperties ConnectionSettingsProperty where
  toResourceProperties ConnectionSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElasticLoadBalancing::LoadBalancer.ConnectionSettings",
         properties = ["IdleTimeout" JSON..= idleTimeout]}
instance JSON.ToJSON ConnectionSettingsProperty where
  toJSON ConnectionSettingsProperty {..}
    = JSON.object ["IdleTimeout" JSON..= idleTimeout]
instance Property "IdleTimeout" ConnectionSettingsProperty where
  type PropertyType "IdleTimeout" ConnectionSettingsProperty = Value Prelude.Integer
  set newValue ConnectionSettingsProperty {}
    = ConnectionSettingsProperty {idleTimeout = newValue, ..}