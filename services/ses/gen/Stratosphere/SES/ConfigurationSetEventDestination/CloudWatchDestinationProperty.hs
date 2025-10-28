module Stratosphere.SES.ConfigurationSetEventDestination.CloudWatchDestinationProperty (
        module Exports, CloudWatchDestinationProperty(..),
        mkCloudWatchDestinationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SES.ConfigurationSetEventDestination.DimensionConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data CloudWatchDestinationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-cloudwatchdestination.html>
    CloudWatchDestinationProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-cloudwatchdestination.html#cfn-ses-configurationseteventdestination-cloudwatchdestination-dimensionconfigurations>
                                   dimensionConfigurations :: (Prelude.Maybe [DimensionConfigurationProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCloudWatchDestinationProperty :: CloudWatchDestinationProperty
mkCloudWatchDestinationProperty
  = CloudWatchDestinationProperty
      {haddock_workaround_ = (),
       dimensionConfigurations = Prelude.Nothing}
instance ToResourceProperties CloudWatchDestinationProperty where
  toResourceProperties CloudWatchDestinationProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::ConfigurationSetEventDestination.CloudWatchDestination",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DimensionConfigurations"
                              Prelude.<$> dimensionConfigurations])}
instance JSON.ToJSON CloudWatchDestinationProperty where
  toJSON CloudWatchDestinationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DimensionConfigurations"
                 Prelude.<$> dimensionConfigurations]))
instance Property "DimensionConfigurations" CloudWatchDestinationProperty where
  type PropertyType "DimensionConfigurations" CloudWatchDestinationProperty = [DimensionConfigurationProperty]
  set newValue CloudWatchDestinationProperty {..}
    = CloudWatchDestinationProperty
        {dimensionConfigurations = Prelude.pure newValue, ..}