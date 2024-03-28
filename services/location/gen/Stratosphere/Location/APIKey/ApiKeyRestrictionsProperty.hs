module Stratosphere.Location.APIKey.ApiKeyRestrictionsProperty (
        ApiKeyRestrictionsProperty(..), mkApiKeyRestrictionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ApiKeyRestrictionsProperty
  = ApiKeyRestrictionsProperty {allowActions :: (ValueList Prelude.Text),
                                allowReferers :: (Prelude.Maybe (ValueList Prelude.Text)),
                                allowResources :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkApiKeyRestrictionsProperty ::
  ValueList Prelude.Text
  -> ValueList Prelude.Text -> ApiKeyRestrictionsProperty
mkApiKeyRestrictionsProperty allowActions allowResources
  = ApiKeyRestrictionsProperty
      {allowActions = allowActions, allowResources = allowResources,
       allowReferers = Prelude.Nothing}
instance ToResourceProperties ApiKeyRestrictionsProperty where
  toResourceProperties ApiKeyRestrictionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Location::APIKey.ApiKeyRestrictions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AllowActions" JSON..= allowActions,
                            "AllowResources" JSON..= allowResources]
                           (Prelude.catMaybes
                              [(JSON..=) "AllowReferers" Prelude.<$> allowReferers]))}
instance JSON.ToJSON ApiKeyRestrictionsProperty where
  toJSON ApiKeyRestrictionsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AllowActions" JSON..= allowActions,
               "AllowResources" JSON..= allowResources]
              (Prelude.catMaybes
                 [(JSON..=) "AllowReferers" Prelude.<$> allowReferers])))
instance Property "AllowActions" ApiKeyRestrictionsProperty where
  type PropertyType "AllowActions" ApiKeyRestrictionsProperty = ValueList Prelude.Text
  set newValue ApiKeyRestrictionsProperty {..}
    = ApiKeyRestrictionsProperty {allowActions = newValue, ..}
instance Property "AllowReferers" ApiKeyRestrictionsProperty where
  type PropertyType "AllowReferers" ApiKeyRestrictionsProperty = ValueList Prelude.Text
  set newValue ApiKeyRestrictionsProperty {..}
    = ApiKeyRestrictionsProperty
        {allowReferers = Prelude.pure newValue, ..}
instance Property "AllowResources" ApiKeyRestrictionsProperty where
  type PropertyType "AllowResources" ApiKeyRestrictionsProperty = ValueList Prelude.Text
  set newValue ApiKeyRestrictionsProperty {..}
    = ApiKeyRestrictionsProperty {allowResources = newValue, ..}