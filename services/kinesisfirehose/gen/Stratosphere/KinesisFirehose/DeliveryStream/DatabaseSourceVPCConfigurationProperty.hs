module Stratosphere.KinesisFirehose.DeliveryStream.DatabaseSourceVPCConfigurationProperty (
        DatabaseSourceVPCConfigurationProperty(..),
        mkDatabaseSourceVPCConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DatabaseSourceVPCConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-databasesourcevpcconfiguration.html>
    DatabaseSourceVPCConfigurationProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-databasesourcevpcconfiguration.html#cfn-kinesisfirehose-deliverystream-databasesourcevpcconfiguration-vpcendpointservicename>
                                            vpcEndpointServiceName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDatabaseSourceVPCConfigurationProperty ::
  Value Prelude.Text -> DatabaseSourceVPCConfigurationProperty
mkDatabaseSourceVPCConfigurationProperty vpcEndpointServiceName
  = DatabaseSourceVPCConfigurationProperty
      {haddock_workaround_ = (),
       vpcEndpointServiceName = vpcEndpointServiceName}
instance ToResourceProperties DatabaseSourceVPCConfigurationProperty where
  toResourceProperties DatabaseSourceVPCConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.DatabaseSourceVPCConfiguration",
         supportsTags = Prelude.False,
         properties = ["VpcEndpointServiceName"
                         JSON..= vpcEndpointServiceName]}
instance JSON.ToJSON DatabaseSourceVPCConfigurationProperty where
  toJSON DatabaseSourceVPCConfigurationProperty {..}
    = JSON.object
        ["VpcEndpointServiceName" JSON..= vpcEndpointServiceName]
instance Property "VpcEndpointServiceName" DatabaseSourceVPCConfigurationProperty where
  type PropertyType "VpcEndpointServiceName" DatabaseSourceVPCConfigurationProperty = Value Prelude.Text
  set newValue DatabaseSourceVPCConfigurationProperty {..}
    = DatabaseSourceVPCConfigurationProperty
        {vpcEndpointServiceName = newValue, ..}