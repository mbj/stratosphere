module Stratosphere.KinesisAnalyticsV2.Application.DeployAsApplicationConfigurationProperty (
        module Exports, DeployAsApplicationConfigurationProperty(..),
        mkDeployAsApplicationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KinesisAnalyticsV2.Application.S3ContentBaseLocationProperty as Exports
import Stratosphere.ResourceProperties
data DeployAsApplicationConfigurationProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-deployasapplicationconfiguration.html>
    DeployAsApplicationConfigurationProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-deployasapplicationconfiguration.html#cfn-kinesisanalyticsv2-application-deployasapplicationconfiguration-s3contentlocation>
                                              s3ContentLocation :: S3ContentBaseLocationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDeployAsApplicationConfigurationProperty ::
  S3ContentBaseLocationProperty
  -> DeployAsApplicationConfigurationProperty
mkDeployAsApplicationConfigurationProperty s3ContentLocation
  = DeployAsApplicationConfigurationProperty
      {s3ContentLocation = s3ContentLocation}
instance ToResourceProperties DeployAsApplicationConfigurationProperty where
  toResourceProperties DeployAsApplicationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalyticsV2::Application.DeployAsApplicationConfiguration",
         supportsTags = Prelude.False,
         properties = ["S3ContentLocation" JSON..= s3ContentLocation]}
instance JSON.ToJSON DeployAsApplicationConfigurationProperty where
  toJSON DeployAsApplicationConfigurationProperty {..}
    = JSON.object ["S3ContentLocation" JSON..= s3ContentLocation]
instance Property "S3ContentLocation" DeployAsApplicationConfigurationProperty where
  type PropertyType "S3ContentLocation" DeployAsApplicationConfigurationProperty = S3ContentBaseLocationProperty
  set newValue DeployAsApplicationConfigurationProperty {}
    = DeployAsApplicationConfigurationProperty
        {s3ContentLocation = newValue, ..}