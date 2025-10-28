module Stratosphere.Comprehend.Flywheel.DataSecurityConfigProperty (
        module Exports, DataSecurityConfigProperty(..),
        mkDataSecurityConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Comprehend.Flywheel.VpcConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataSecurityConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-comprehend-flywheel-datasecurityconfig.html>
    DataSecurityConfigProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-comprehend-flywheel-datasecurityconfig.html#cfn-comprehend-flywheel-datasecurityconfig-datalakekmskeyid>
                                dataLakeKmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-comprehend-flywheel-datasecurityconfig.html#cfn-comprehend-flywheel-datasecurityconfig-modelkmskeyid>
                                modelKmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-comprehend-flywheel-datasecurityconfig.html#cfn-comprehend-flywheel-datasecurityconfig-volumekmskeyid>
                                volumeKmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-comprehend-flywheel-datasecurityconfig.html#cfn-comprehend-flywheel-datasecurityconfig-vpcconfig>
                                vpcConfig :: (Prelude.Maybe VpcConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataSecurityConfigProperty :: DataSecurityConfigProperty
mkDataSecurityConfigProperty
  = DataSecurityConfigProperty
      {haddock_workaround_ = (), dataLakeKmsKeyId = Prelude.Nothing,
       modelKmsKeyId = Prelude.Nothing, volumeKmsKeyId = Prelude.Nothing,
       vpcConfig = Prelude.Nothing}
instance ToResourceProperties DataSecurityConfigProperty where
  toResourceProperties DataSecurityConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Comprehend::Flywheel.DataSecurityConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DataLakeKmsKeyId" Prelude.<$> dataLakeKmsKeyId,
                            (JSON..=) "ModelKmsKeyId" Prelude.<$> modelKmsKeyId,
                            (JSON..=) "VolumeKmsKeyId" Prelude.<$> volumeKmsKeyId,
                            (JSON..=) "VpcConfig" Prelude.<$> vpcConfig])}
instance JSON.ToJSON DataSecurityConfigProperty where
  toJSON DataSecurityConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DataLakeKmsKeyId" Prelude.<$> dataLakeKmsKeyId,
               (JSON..=) "ModelKmsKeyId" Prelude.<$> modelKmsKeyId,
               (JSON..=) "VolumeKmsKeyId" Prelude.<$> volumeKmsKeyId,
               (JSON..=) "VpcConfig" Prelude.<$> vpcConfig]))
instance Property "DataLakeKmsKeyId" DataSecurityConfigProperty where
  type PropertyType "DataLakeKmsKeyId" DataSecurityConfigProperty = Value Prelude.Text
  set newValue DataSecurityConfigProperty {..}
    = DataSecurityConfigProperty
        {dataLakeKmsKeyId = Prelude.pure newValue, ..}
instance Property "ModelKmsKeyId" DataSecurityConfigProperty where
  type PropertyType "ModelKmsKeyId" DataSecurityConfigProperty = Value Prelude.Text
  set newValue DataSecurityConfigProperty {..}
    = DataSecurityConfigProperty
        {modelKmsKeyId = Prelude.pure newValue, ..}
instance Property "VolumeKmsKeyId" DataSecurityConfigProperty where
  type PropertyType "VolumeKmsKeyId" DataSecurityConfigProperty = Value Prelude.Text
  set newValue DataSecurityConfigProperty {..}
    = DataSecurityConfigProperty
        {volumeKmsKeyId = Prelude.pure newValue, ..}
instance Property "VpcConfig" DataSecurityConfigProperty where
  type PropertyType "VpcConfig" DataSecurityConfigProperty = VpcConfigProperty
  set newValue DataSecurityConfigProperty {..}
    = DataSecurityConfigProperty
        {vpcConfig = Prelude.pure newValue, ..}