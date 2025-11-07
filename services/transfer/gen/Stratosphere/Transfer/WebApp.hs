module Stratosphere.Transfer.WebApp (
        module Exports, WebApp(..), mkWebApp
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Transfer.WebApp.IdentityProviderDetailsProperty as Exports
import {-# SOURCE #-} Stratosphere.Transfer.WebApp.WebAppCustomizationProperty as Exports
import {-# SOURCE #-} Stratosphere.Transfer.WebApp.WebAppUnitsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data WebApp
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-webapp.html>
    WebApp {haddock_workaround_ :: (),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-webapp.html#cfn-transfer-webapp-accessendpoint>
            accessEndpoint :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-webapp.html#cfn-transfer-webapp-identityproviderdetails>
            identityProviderDetails :: IdentityProviderDetailsProperty,
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-webapp.html#cfn-transfer-webapp-tags>
            tags :: (Prelude.Maybe [Tag]),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-webapp.html#cfn-transfer-webapp-webappcustomization>
            webAppCustomization :: (Prelude.Maybe WebAppCustomizationProperty),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-webapp.html#cfn-transfer-webapp-webappendpointpolicy>
            webAppEndpointPolicy :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-webapp.html#cfn-transfer-webapp-webappunits>
            webAppUnits :: (Prelude.Maybe WebAppUnitsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWebApp :: IdentityProviderDetailsProperty -> WebApp
mkWebApp identityProviderDetails
  = WebApp
      {haddock_workaround_ = (),
       identityProviderDetails = identityProviderDetails,
       accessEndpoint = Prelude.Nothing, tags = Prelude.Nothing,
       webAppCustomization = Prelude.Nothing,
       webAppEndpointPolicy = Prelude.Nothing,
       webAppUnits = Prelude.Nothing}
instance ToResourceProperties WebApp where
  toResourceProperties WebApp {..}
    = ResourceProperties
        {awsType = "AWS::Transfer::WebApp", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["IdentityProviderDetails" JSON..= identityProviderDetails]
                           (Prelude.catMaybes
                              [(JSON..=) "AccessEndpoint" Prelude.<$> accessEndpoint,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "WebAppCustomization" Prelude.<$> webAppCustomization,
                               (JSON..=) "WebAppEndpointPolicy" Prelude.<$> webAppEndpointPolicy,
                               (JSON..=) "WebAppUnits" Prelude.<$> webAppUnits]))}
instance JSON.ToJSON WebApp where
  toJSON WebApp {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["IdentityProviderDetails" JSON..= identityProviderDetails]
              (Prelude.catMaybes
                 [(JSON..=) "AccessEndpoint" Prelude.<$> accessEndpoint,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "WebAppCustomization" Prelude.<$> webAppCustomization,
                  (JSON..=) "WebAppEndpointPolicy" Prelude.<$> webAppEndpointPolicy,
                  (JSON..=) "WebAppUnits" Prelude.<$> webAppUnits])))
instance Property "AccessEndpoint" WebApp where
  type PropertyType "AccessEndpoint" WebApp = Value Prelude.Text
  set newValue WebApp {..}
    = WebApp {accessEndpoint = Prelude.pure newValue, ..}
instance Property "IdentityProviderDetails" WebApp where
  type PropertyType "IdentityProviderDetails" WebApp = IdentityProviderDetailsProperty
  set newValue WebApp {..}
    = WebApp {identityProviderDetails = newValue, ..}
instance Property "Tags" WebApp where
  type PropertyType "Tags" WebApp = [Tag]
  set newValue WebApp {..}
    = WebApp {tags = Prelude.pure newValue, ..}
instance Property "WebAppCustomization" WebApp where
  type PropertyType "WebAppCustomization" WebApp = WebAppCustomizationProperty
  set newValue WebApp {..}
    = WebApp {webAppCustomization = Prelude.pure newValue, ..}
instance Property "WebAppEndpointPolicy" WebApp where
  type PropertyType "WebAppEndpointPolicy" WebApp = Value Prelude.Text
  set newValue WebApp {..}
    = WebApp {webAppEndpointPolicy = Prelude.pure newValue, ..}
instance Property "WebAppUnits" WebApp where
  type PropertyType "WebAppUnits" WebApp = WebAppUnitsProperty
  set newValue WebApp {..}
    = WebApp {webAppUnits = Prelude.pure newValue, ..}