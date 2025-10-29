module Stratosphere.ImageBuilder.ImagePipeline.ImageTestsConfigurationProperty (
        ImageTestsConfigurationProperty(..),
        mkImageTestsConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ImageTestsConfigurationProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagepipeline-imagetestsconfiguration.html>
    ImageTestsConfigurationProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagepipeline-imagetestsconfiguration.html#cfn-imagebuilder-imagepipeline-imagetestsconfiguration-imagetestsenabled>
                                     imageTestsEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                     -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagepipeline-imagetestsconfiguration.html#cfn-imagebuilder-imagepipeline-imagetestsconfiguration-timeoutminutes>
                                     timeoutMinutes :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkImageTestsConfigurationProperty ::
  ImageTestsConfigurationProperty
mkImageTestsConfigurationProperty
  = ImageTestsConfigurationProperty
      {imageTestsEnabled = Prelude.Nothing,
       timeoutMinutes = Prelude.Nothing}
instance ToResourceProperties ImageTestsConfigurationProperty where
  toResourceProperties ImageTestsConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ImageBuilder::ImagePipeline.ImageTestsConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ImageTestsEnabled" Prelude.<$> imageTestsEnabled,
                            (JSON..=) "TimeoutMinutes" Prelude.<$> timeoutMinutes])}
instance JSON.ToJSON ImageTestsConfigurationProperty where
  toJSON ImageTestsConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ImageTestsEnabled" Prelude.<$> imageTestsEnabled,
               (JSON..=) "TimeoutMinutes" Prelude.<$> timeoutMinutes]))
instance Property "ImageTestsEnabled" ImageTestsConfigurationProperty where
  type PropertyType "ImageTestsEnabled" ImageTestsConfigurationProperty = Value Prelude.Bool
  set newValue ImageTestsConfigurationProperty {..}
    = ImageTestsConfigurationProperty
        {imageTestsEnabled = Prelude.pure newValue, ..}
instance Property "TimeoutMinutes" ImageTestsConfigurationProperty where
  type PropertyType "TimeoutMinutes" ImageTestsConfigurationProperty = Value Prelude.Integer
  set newValue ImageTestsConfigurationProperty {..}
    = ImageTestsConfigurationProperty
        {timeoutMinutes = Prelude.pure newValue, ..}