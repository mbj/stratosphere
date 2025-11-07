module Stratosphere.MediaPackageV2.Channel.OutputHeaderConfigurationProperty (
        OutputHeaderConfigurationProperty(..),
        mkOutputHeaderConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OutputHeaderConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-channel-outputheaderconfiguration.html>
    OutputHeaderConfigurationProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-channel-outputheaderconfiguration.html#cfn-mediapackagev2-channel-outputheaderconfiguration-publishmqcs>
                                       publishMQCS :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOutputHeaderConfigurationProperty ::
  OutputHeaderConfigurationProperty
mkOutputHeaderConfigurationProperty
  = OutputHeaderConfigurationProperty
      {haddock_workaround_ = (), publishMQCS = Prelude.Nothing}
instance ToResourceProperties OutputHeaderConfigurationProperty where
  toResourceProperties OutputHeaderConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackageV2::Channel.OutputHeaderConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PublishMQCS" Prelude.<$> publishMQCS])}
instance JSON.ToJSON OutputHeaderConfigurationProperty where
  toJSON OutputHeaderConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PublishMQCS" Prelude.<$> publishMQCS]))
instance Property "PublishMQCS" OutputHeaderConfigurationProperty where
  type PropertyType "PublishMQCS" OutputHeaderConfigurationProperty = Value Prelude.Bool
  set newValue OutputHeaderConfigurationProperty {..}
    = OutputHeaderConfigurationProperty
        {publishMQCS = Prelude.pure newValue, ..}