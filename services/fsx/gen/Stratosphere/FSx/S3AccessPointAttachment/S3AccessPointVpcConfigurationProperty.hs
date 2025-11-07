module Stratosphere.FSx.S3AccessPointAttachment.S3AccessPointVpcConfigurationProperty (
        S3AccessPointVpcConfigurationProperty(..),
        mkS3AccessPointVpcConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3AccessPointVpcConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-s3accesspointattachment-s3accesspointvpcconfiguration.html>
    S3AccessPointVpcConfigurationProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-s3accesspointattachment-s3accesspointvpcconfiguration.html#cfn-fsx-s3accesspointattachment-s3accesspointvpcconfiguration-vpcid>
                                           vpcId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3AccessPointVpcConfigurationProperty ::
  Value Prelude.Text -> S3AccessPointVpcConfigurationProperty
mkS3AccessPointVpcConfigurationProperty vpcId
  = S3AccessPointVpcConfigurationProperty
      {haddock_workaround_ = (), vpcId = vpcId}
instance ToResourceProperties S3AccessPointVpcConfigurationProperty where
  toResourceProperties S3AccessPointVpcConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::FSx::S3AccessPointAttachment.S3AccessPointVpcConfiguration",
         supportsTags = Prelude.False, properties = ["VpcId" JSON..= vpcId]}
instance JSON.ToJSON S3AccessPointVpcConfigurationProperty where
  toJSON S3AccessPointVpcConfigurationProperty {..}
    = JSON.object ["VpcId" JSON..= vpcId]
instance Property "VpcId" S3AccessPointVpcConfigurationProperty where
  type PropertyType "VpcId" S3AccessPointVpcConfigurationProperty = Value Prelude.Text
  set newValue S3AccessPointVpcConfigurationProperty {..}
    = S3AccessPointVpcConfigurationProperty {vpcId = newValue, ..}