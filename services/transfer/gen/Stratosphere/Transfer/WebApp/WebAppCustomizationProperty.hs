module Stratosphere.Transfer.WebApp.WebAppCustomizationProperty (
        WebAppCustomizationProperty(..), mkWebAppCustomizationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WebAppCustomizationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-webapp-webappcustomization.html>
    WebAppCustomizationProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-webapp-webappcustomization.html#cfn-transfer-webapp-webappcustomization-faviconfile>
                                 faviconFile :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-webapp-webappcustomization.html#cfn-transfer-webapp-webappcustomization-logofile>
                                 logoFile :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-webapp-webappcustomization.html#cfn-transfer-webapp-webappcustomization-title>
                                 title :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWebAppCustomizationProperty :: WebAppCustomizationProperty
mkWebAppCustomizationProperty
  = WebAppCustomizationProperty
      {haddock_workaround_ = (), faviconFile = Prelude.Nothing,
       logoFile = Prelude.Nothing, title = Prelude.Nothing}
instance ToResourceProperties WebAppCustomizationProperty where
  toResourceProperties WebAppCustomizationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Transfer::WebApp.WebAppCustomization",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FaviconFile" Prelude.<$> faviconFile,
                            (JSON..=) "LogoFile" Prelude.<$> logoFile,
                            (JSON..=) "Title" Prelude.<$> title])}
instance JSON.ToJSON WebAppCustomizationProperty where
  toJSON WebAppCustomizationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FaviconFile" Prelude.<$> faviconFile,
               (JSON..=) "LogoFile" Prelude.<$> logoFile,
               (JSON..=) "Title" Prelude.<$> title]))
instance Property "FaviconFile" WebAppCustomizationProperty where
  type PropertyType "FaviconFile" WebAppCustomizationProperty = Value Prelude.Text
  set newValue WebAppCustomizationProperty {..}
    = WebAppCustomizationProperty
        {faviconFile = Prelude.pure newValue, ..}
instance Property "LogoFile" WebAppCustomizationProperty where
  type PropertyType "LogoFile" WebAppCustomizationProperty = Value Prelude.Text
  set newValue WebAppCustomizationProperty {..}
    = WebAppCustomizationProperty
        {logoFile = Prelude.pure newValue, ..}
instance Property "Title" WebAppCustomizationProperty where
  type PropertyType "Title" WebAppCustomizationProperty = Value Prelude.Text
  set newValue WebAppCustomizationProperty {..}
    = WebAppCustomizationProperty {title = Prelude.pure newValue, ..}