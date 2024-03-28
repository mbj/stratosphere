module Stratosphere.KinesisFirehose.DeliveryStream.SnowflakeVpcConfigurationProperty (
        SnowflakeVpcConfigurationProperty(..),
        mkSnowflakeVpcConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SnowflakeVpcConfigurationProperty
  = SnowflakeVpcConfigurationProperty {privateLinkVpceId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSnowflakeVpcConfigurationProperty ::
  Value Prelude.Text -> SnowflakeVpcConfigurationProperty
mkSnowflakeVpcConfigurationProperty privateLinkVpceId
  = SnowflakeVpcConfigurationProperty
      {privateLinkVpceId = privateLinkVpceId}
instance ToResourceProperties SnowflakeVpcConfigurationProperty where
  toResourceProperties SnowflakeVpcConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.SnowflakeVpcConfiguration",
         supportsTags = Prelude.False,
         properties = ["PrivateLinkVpceId" JSON..= privateLinkVpceId]}
instance JSON.ToJSON SnowflakeVpcConfigurationProperty where
  toJSON SnowflakeVpcConfigurationProperty {..}
    = JSON.object ["PrivateLinkVpceId" JSON..= privateLinkVpceId]
instance Property "PrivateLinkVpceId" SnowflakeVpcConfigurationProperty where
  type PropertyType "PrivateLinkVpceId" SnowflakeVpcConfigurationProperty = Value Prelude.Text
  set newValue SnowflakeVpcConfigurationProperty {}
    = SnowflakeVpcConfigurationProperty
        {privateLinkVpceId = newValue, ..}