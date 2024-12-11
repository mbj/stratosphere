module Stratosphere.Cognito.ManagedLoginBranding (
        module Exports, ManagedLoginBranding(..), mkManagedLoginBranding
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Cognito.ManagedLoginBranding.AssetTypeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ManagedLoginBranding
  = ManagedLoginBranding {assets :: (Prelude.Maybe [AssetTypeProperty]),
                          clientId :: (Prelude.Maybe (Value Prelude.Text)),
                          returnMergedResources :: (Prelude.Maybe (Value Prelude.Bool)),
                          settings :: (Prelude.Maybe JSON.Object),
                          useCognitoProvidedValues :: (Prelude.Maybe (Value Prelude.Bool)),
                          userPoolId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkManagedLoginBranding ::
  Value Prelude.Text -> ManagedLoginBranding
mkManagedLoginBranding userPoolId
  = ManagedLoginBranding
      {userPoolId = userPoolId, assets = Prelude.Nothing,
       clientId = Prelude.Nothing,
       returnMergedResources = Prelude.Nothing,
       settings = Prelude.Nothing,
       useCognitoProvidedValues = Prelude.Nothing}
instance ToResourceProperties ManagedLoginBranding where
  toResourceProperties ManagedLoginBranding {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::ManagedLoginBranding",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["UserPoolId" JSON..= userPoolId]
                           (Prelude.catMaybes
                              [(JSON..=) "Assets" Prelude.<$> assets,
                               (JSON..=) "ClientId" Prelude.<$> clientId,
                               (JSON..=) "ReturnMergedResources"
                                 Prelude.<$> returnMergedResources,
                               (JSON..=) "Settings" Prelude.<$> settings,
                               (JSON..=) "UseCognitoProvidedValues"
                                 Prelude.<$> useCognitoProvidedValues]))}
instance JSON.ToJSON ManagedLoginBranding where
  toJSON ManagedLoginBranding {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["UserPoolId" JSON..= userPoolId]
              (Prelude.catMaybes
                 [(JSON..=) "Assets" Prelude.<$> assets,
                  (JSON..=) "ClientId" Prelude.<$> clientId,
                  (JSON..=) "ReturnMergedResources"
                    Prelude.<$> returnMergedResources,
                  (JSON..=) "Settings" Prelude.<$> settings,
                  (JSON..=) "UseCognitoProvidedValues"
                    Prelude.<$> useCognitoProvidedValues])))
instance Property "Assets" ManagedLoginBranding where
  type PropertyType "Assets" ManagedLoginBranding = [AssetTypeProperty]
  set newValue ManagedLoginBranding {..}
    = ManagedLoginBranding {assets = Prelude.pure newValue, ..}
instance Property "ClientId" ManagedLoginBranding where
  type PropertyType "ClientId" ManagedLoginBranding = Value Prelude.Text
  set newValue ManagedLoginBranding {..}
    = ManagedLoginBranding {clientId = Prelude.pure newValue, ..}
instance Property "ReturnMergedResources" ManagedLoginBranding where
  type PropertyType "ReturnMergedResources" ManagedLoginBranding = Value Prelude.Bool
  set newValue ManagedLoginBranding {..}
    = ManagedLoginBranding
        {returnMergedResources = Prelude.pure newValue, ..}
instance Property "Settings" ManagedLoginBranding where
  type PropertyType "Settings" ManagedLoginBranding = JSON.Object
  set newValue ManagedLoginBranding {..}
    = ManagedLoginBranding {settings = Prelude.pure newValue, ..}
instance Property "UseCognitoProvidedValues" ManagedLoginBranding where
  type PropertyType "UseCognitoProvidedValues" ManagedLoginBranding = Value Prelude.Bool
  set newValue ManagedLoginBranding {..}
    = ManagedLoginBranding
        {useCognitoProvidedValues = Prelude.pure newValue, ..}
instance Property "UserPoolId" ManagedLoginBranding where
  type PropertyType "UserPoolId" ManagedLoginBranding = Value Prelude.Text
  set newValue ManagedLoginBranding {..}
    = ManagedLoginBranding {userPoolId = newValue, ..}