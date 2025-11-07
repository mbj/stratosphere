module Stratosphere.FSx.S3AccessPointAttachment.S3AccessPointProperty (
        module Exports, S3AccessPointProperty(..), mkS3AccessPointProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.FSx.S3AccessPointAttachment.S3AccessPointVpcConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3AccessPointProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-s3accesspointattachment-s3accesspoint.html>
    S3AccessPointProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-s3accesspointattachment-s3accesspoint.html#cfn-fsx-s3accesspointattachment-s3accesspoint-alias>
                           alias :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-s3accesspointattachment-s3accesspoint.html#cfn-fsx-s3accesspointattachment-s3accesspoint-policy>
                           policy :: (Prelude.Maybe JSON.Object),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-s3accesspointattachment-s3accesspoint.html#cfn-fsx-s3accesspointattachment-s3accesspoint-resourcearn>
                           resourceARN :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-s3accesspointattachment-s3accesspoint.html#cfn-fsx-s3accesspointattachment-s3accesspoint-vpcconfiguration>
                           vpcConfiguration :: (Prelude.Maybe S3AccessPointVpcConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3AccessPointProperty :: S3AccessPointProperty
mkS3AccessPointProperty
  = S3AccessPointProperty
      {haddock_workaround_ = (), alias = Prelude.Nothing,
       policy = Prelude.Nothing, resourceARN = Prelude.Nothing,
       vpcConfiguration = Prelude.Nothing}
instance ToResourceProperties S3AccessPointProperty where
  toResourceProperties S3AccessPointProperty {..}
    = ResourceProperties
        {awsType = "AWS::FSx::S3AccessPointAttachment.S3AccessPoint",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Alias" Prelude.<$> alias,
                            (JSON..=) "Policy" Prelude.<$> policy,
                            (JSON..=) "ResourceARN" Prelude.<$> resourceARN,
                            (JSON..=) "VpcConfiguration" Prelude.<$> vpcConfiguration])}
instance JSON.ToJSON S3AccessPointProperty where
  toJSON S3AccessPointProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Alias" Prelude.<$> alias,
               (JSON..=) "Policy" Prelude.<$> policy,
               (JSON..=) "ResourceARN" Prelude.<$> resourceARN,
               (JSON..=) "VpcConfiguration" Prelude.<$> vpcConfiguration]))
instance Property "Alias" S3AccessPointProperty where
  type PropertyType "Alias" S3AccessPointProperty = Value Prelude.Text
  set newValue S3AccessPointProperty {..}
    = S3AccessPointProperty {alias = Prelude.pure newValue, ..}
instance Property "Policy" S3AccessPointProperty where
  type PropertyType "Policy" S3AccessPointProperty = JSON.Object
  set newValue S3AccessPointProperty {..}
    = S3AccessPointProperty {policy = Prelude.pure newValue, ..}
instance Property "ResourceARN" S3AccessPointProperty where
  type PropertyType "ResourceARN" S3AccessPointProperty = Value Prelude.Text
  set newValue S3AccessPointProperty {..}
    = S3AccessPointProperty {resourceARN = Prelude.pure newValue, ..}
instance Property "VpcConfiguration" S3AccessPointProperty where
  type PropertyType "VpcConfiguration" S3AccessPointProperty = S3AccessPointVpcConfigurationProperty
  set newValue S3AccessPointProperty {..}
    = S3AccessPointProperty
        {vpcConfiguration = Prelude.pure newValue, ..}