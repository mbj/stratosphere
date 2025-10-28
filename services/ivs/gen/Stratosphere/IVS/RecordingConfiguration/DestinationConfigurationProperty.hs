module Stratosphere.IVS.RecordingConfiguration.DestinationConfigurationProperty (
        module Exports, DestinationConfigurationProperty(..),
        mkDestinationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IVS.RecordingConfiguration.S3DestinationConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data DestinationConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ivs-recordingconfiguration-destinationconfiguration.html>
    DestinationConfigurationProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ivs-recordingconfiguration-destinationconfiguration.html#cfn-ivs-recordingconfiguration-destinationconfiguration-s3>
                                      s3 :: (Prelude.Maybe S3DestinationConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDestinationConfigurationProperty ::
  DestinationConfigurationProperty
mkDestinationConfigurationProperty
  = DestinationConfigurationProperty
      {haddock_workaround_ = (), s3 = Prelude.Nothing}
instance ToResourceProperties DestinationConfigurationProperty where
  toResourceProperties DestinationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::IVS::RecordingConfiguration.DestinationConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "S3" Prelude.<$> s3])}
instance JSON.ToJSON DestinationConfigurationProperty where
  toJSON DestinationConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "S3" Prelude.<$> s3]))
instance Property "S3" DestinationConfigurationProperty where
  type PropertyType "S3" DestinationConfigurationProperty = S3DestinationConfigurationProperty
  set newValue DestinationConfigurationProperty {..}
    = DestinationConfigurationProperty {s3 = Prelude.pure newValue, ..}