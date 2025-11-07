module Stratosphere.ImageBuilder.Image.ImageLoggingConfigurationProperty (
        ImageLoggingConfigurationProperty(..),
        mkImageLoggingConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ImageLoggingConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-image-imageloggingconfiguration.html>
    ImageLoggingConfigurationProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-image-imageloggingconfiguration.html#cfn-imagebuilder-image-imageloggingconfiguration-loggroupname>
                                       logGroupName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkImageLoggingConfigurationProperty ::
  ImageLoggingConfigurationProperty
mkImageLoggingConfigurationProperty
  = ImageLoggingConfigurationProperty
      {haddock_workaround_ = (), logGroupName = Prelude.Nothing}
instance ToResourceProperties ImageLoggingConfigurationProperty where
  toResourceProperties ImageLoggingConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ImageBuilder::Image.ImageLoggingConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "LogGroupName" Prelude.<$> logGroupName])}
instance JSON.ToJSON ImageLoggingConfigurationProperty where
  toJSON ImageLoggingConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "LogGroupName" Prelude.<$> logGroupName]))
instance Property "LogGroupName" ImageLoggingConfigurationProperty where
  type PropertyType "LogGroupName" ImageLoggingConfigurationProperty = Value Prelude.Text
  set newValue ImageLoggingConfigurationProperty {..}
    = ImageLoggingConfigurationProperty
        {logGroupName = Prelude.pure newValue, ..}