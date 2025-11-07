module Stratosphere.QBusiness.WebExperience.CustomizationConfigurationProperty (
        CustomizationConfigurationProperty(..),
        mkCustomizationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomizationConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-webexperience-customizationconfiguration.html>
    CustomizationConfigurationProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-webexperience-customizationconfiguration.html#cfn-qbusiness-webexperience-customizationconfiguration-customcssurl>
                                        customCSSUrl :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-webexperience-customizationconfiguration.html#cfn-qbusiness-webexperience-customizationconfiguration-faviconurl>
                                        faviconUrl :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-webexperience-customizationconfiguration.html#cfn-qbusiness-webexperience-customizationconfiguration-fonturl>
                                        fontUrl :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-webexperience-customizationconfiguration.html#cfn-qbusiness-webexperience-customizationconfiguration-logourl>
                                        logoUrl :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomizationConfigurationProperty ::
  CustomizationConfigurationProperty
mkCustomizationConfigurationProperty
  = CustomizationConfigurationProperty
      {haddock_workaround_ = (), customCSSUrl = Prelude.Nothing,
       faviconUrl = Prelude.Nothing, fontUrl = Prelude.Nothing,
       logoUrl = Prelude.Nothing}
instance ToResourceProperties CustomizationConfigurationProperty where
  toResourceProperties CustomizationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QBusiness::WebExperience.CustomizationConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CustomCSSUrl" Prelude.<$> customCSSUrl,
                            (JSON..=) "FaviconUrl" Prelude.<$> faviconUrl,
                            (JSON..=) "FontUrl" Prelude.<$> fontUrl,
                            (JSON..=) "LogoUrl" Prelude.<$> logoUrl])}
instance JSON.ToJSON CustomizationConfigurationProperty where
  toJSON CustomizationConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CustomCSSUrl" Prelude.<$> customCSSUrl,
               (JSON..=) "FaviconUrl" Prelude.<$> faviconUrl,
               (JSON..=) "FontUrl" Prelude.<$> fontUrl,
               (JSON..=) "LogoUrl" Prelude.<$> logoUrl]))
instance Property "CustomCSSUrl" CustomizationConfigurationProperty where
  type PropertyType "CustomCSSUrl" CustomizationConfigurationProperty = Value Prelude.Text
  set newValue CustomizationConfigurationProperty {..}
    = CustomizationConfigurationProperty
        {customCSSUrl = Prelude.pure newValue, ..}
instance Property "FaviconUrl" CustomizationConfigurationProperty where
  type PropertyType "FaviconUrl" CustomizationConfigurationProperty = Value Prelude.Text
  set newValue CustomizationConfigurationProperty {..}
    = CustomizationConfigurationProperty
        {faviconUrl = Prelude.pure newValue, ..}
instance Property "FontUrl" CustomizationConfigurationProperty where
  type PropertyType "FontUrl" CustomizationConfigurationProperty = Value Prelude.Text
  set newValue CustomizationConfigurationProperty {..}
    = CustomizationConfigurationProperty
        {fontUrl = Prelude.pure newValue, ..}
instance Property "LogoUrl" CustomizationConfigurationProperty where
  type PropertyType "LogoUrl" CustomizationConfigurationProperty = Value Prelude.Text
  set newValue CustomizationConfigurationProperty {..}
    = CustomizationConfigurationProperty
        {logoUrl = Prelude.pure newValue, ..}