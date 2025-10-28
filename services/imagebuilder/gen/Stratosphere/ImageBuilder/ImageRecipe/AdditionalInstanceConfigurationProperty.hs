module Stratosphere.ImageBuilder.ImageRecipe.AdditionalInstanceConfigurationProperty (
        module Exports, AdditionalInstanceConfigurationProperty(..),
        mkAdditionalInstanceConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ImageBuilder.ImageRecipe.SystemsManagerAgentProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AdditionalInstanceConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagerecipe-additionalinstanceconfiguration.html>
    AdditionalInstanceConfigurationProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagerecipe-additionalinstanceconfiguration.html#cfn-imagebuilder-imagerecipe-additionalinstanceconfiguration-systemsmanageragent>
                                             systemsManagerAgent :: (Prelude.Maybe SystemsManagerAgentProperty),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagerecipe-additionalinstanceconfiguration.html#cfn-imagebuilder-imagerecipe-additionalinstanceconfiguration-userdataoverride>
                                             userDataOverride :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAdditionalInstanceConfigurationProperty ::
  AdditionalInstanceConfigurationProperty
mkAdditionalInstanceConfigurationProperty
  = AdditionalInstanceConfigurationProperty
      {haddock_workaround_ = (), systemsManagerAgent = Prelude.Nothing,
       userDataOverride = Prelude.Nothing}
instance ToResourceProperties AdditionalInstanceConfigurationProperty where
  toResourceProperties AdditionalInstanceConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ImageBuilder::ImageRecipe.AdditionalInstanceConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SystemsManagerAgent" Prelude.<$> systemsManagerAgent,
                            (JSON..=) "UserDataOverride" Prelude.<$> userDataOverride])}
instance JSON.ToJSON AdditionalInstanceConfigurationProperty where
  toJSON AdditionalInstanceConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SystemsManagerAgent" Prelude.<$> systemsManagerAgent,
               (JSON..=) "UserDataOverride" Prelude.<$> userDataOverride]))
instance Property "SystemsManagerAgent" AdditionalInstanceConfigurationProperty where
  type PropertyType "SystemsManagerAgent" AdditionalInstanceConfigurationProperty = SystemsManagerAgentProperty
  set newValue AdditionalInstanceConfigurationProperty {..}
    = AdditionalInstanceConfigurationProperty
        {systemsManagerAgent = Prelude.pure newValue, ..}
instance Property "UserDataOverride" AdditionalInstanceConfigurationProperty where
  type PropertyType "UserDataOverride" AdditionalInstanceConfigurationProperty = Value Prelude.Text
  set newValue AdditionalInstanceConfigurationProperty {..}
    = AdditionalInstanceConfigurationProperty
        {userDataOverride = Prelude.pure newValue, ..}