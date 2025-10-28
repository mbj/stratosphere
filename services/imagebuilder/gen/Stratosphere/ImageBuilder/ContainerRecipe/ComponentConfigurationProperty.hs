module Stratosphere.ImageBuilder.ContainerRecipe.ComponentConfigurationProperty (
        module Exports, ComponentConfigurationProperty(..),
        mkComponentConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ImageBuilder.ContainerRecipe.ComponentParameterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ComponentConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-containerrecipe-componentconfiguration.html>
    ComponentConfigurationProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-containerrecipe-componentconfiguration.html#cfn-imagebuilder-containerrecipe-componentconfiguration-componentarn>
                                    componentArn :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-containerrecipe-componentconfiguration.html#cfn-imagebuilder-containerrecipe-componentconfiguration-parameters>
                                    parameters :: (Prelude.Maybe [ComponentParameterProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkComponentConfigurationProperty :: ComponentConfigurationProperty
mkComponentConfigurationProperty
  = ComponentConfigurationProperty
      {haddock_workaround_ = (), componentArn = Prelude.Nothing,
       parameters = Prelude.Nothing}
instance ToResourceProperties ComponentConfigurationProperty where
  toResourceProperties ComponentConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ImageBuilder::ContainerRecipe.ComponentConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ComponentArn" Prelude.<$> componentArn,
                            (JSON..=) "Parameters" Prelude.<$> parameters])}
instance JSON.ToJSON ComponentConfigurationProperty where
  toJSON ComponentConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ComponentArn" Prelude.<$> componentArn,
               (JSON..=) "Parameters" Prelude.<$> parameters]))
instance Property "ComponentArn" ComponentConfigurationProperty where
  type PropertyType "ComponentArn" ComponentConfigurationProperty = Value Prelude.Text
  set newValue ComponentConfigurationProperty {..}
    = ComponentConfigurationProperty
        {componentArn = Prelude.pure newValue, ..}
instance Property "Parameters" ComponentConfigurationProperty where
  type PropertyType "Parameters" ComponentConfigurationProperty = [ComponentParameterProperty]
  set newValue ComponentConfigurationProperty {..}
    = ComponentConfigurationProperty
        {parameters = Prelude.pure newValue, ..}