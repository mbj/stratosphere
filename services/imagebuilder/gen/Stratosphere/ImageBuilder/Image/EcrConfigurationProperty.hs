module Stratosphere.ImageBuilder.Image.EcrConfigurationProperty (
        EcrConfigurationProperty(..), mkEcrConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EcrConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-image-ecrconfiguration.html>
    EcrConfigurationProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-image-ecrconfiguration.html#cfn-imagebuilder-image-ecrconfiguration-containertags>
                              containerTags :: (Prelude.Maybe (ValueList Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-image-ecrconfiguration.html#cfn-imagebuilder-image-ecrconfiguration-repositoryname>
                              repositoryName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEcrConfigurationProperty :: EcrConfigurationProperty
mkEcrConfigurationProperty
  = EcrConfigurationProperty
      {haddock_workaround_ = (), containerTags = Prelude.Nothing,
       repositoryName = Prelude.Nothing}
instance ToResourceProperties EcrConfigurationProperty where
  toResourceProperties EcrConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ImageBuilder::Image.EcrConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ContainerTags" Prelude.<$> containerTags,
                            (JSON..=) "RepositoryName" Prelude.<$> repositoryName])}
instance JSON.ToJSON EcrConfigurationProperty where
  toJSON EcrConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ContainerTags" Prelude.<$> containerTags,
               (JSON..=) "RepositoryName" Prelude.<$> repositoryName]))
instance Property "ContainerTags" EcrConfigurationProperty where
  type PropertyType "ContainerTags" EcrConfigurationProperty = ValueList Prelude.Text
  set newValue EcrConfigurationProperty {..}
    = EcrConfigurationProperty
        {containerTags = Prelude.pure newValue, ..}
instance Property "RepositoryName" EcrConfigurationProperty where
  type PropertyType "RepositoryName" EcrConfigurationProperty = Value Prelude.Text
  set newValue EcrConfigurationProperty {..}
    = EcrConfigurationProperty
        {repositoryName = Prelude.pure newValue, ..}