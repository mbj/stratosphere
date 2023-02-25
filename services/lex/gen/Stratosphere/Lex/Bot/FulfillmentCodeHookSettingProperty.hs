module Stratosphere.Lex.Bot.FulfillmentCodeHookSettingProperty (
        module Exports, FulfillmentCodeHookSettingProperty(..),
        mkFulfillmentCodeHookSettingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.FulfillmentUpdatesSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.PostFulfillmentStatusSpecificationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FulfillmentCodeHookSettingProperty
  = FulfillmentCodeHookSettingProperty {enabled :: (Value Prelude.Bool),
                                        fulfillmentUpdatesSpecification :: (Prelude.Maybe FulfillmentUpdatesSpecificationProperty),
                                        isActive :: (Prelude.Maybe (Value Prelude.Bool)),
                                        postFulfillmentStatusSpecification :: (Prelude.Maybe PostFulfillmentStatusSpecificationProperty)}
mkFulfillmentCodeHookSettingProperty ::
  Value Prelude.Bool -> FulfillmentCodeHookSettingProperty
mkFulfillmentCodeHookSettingProperty enabled
  = FulfillmentCodeHookSettingProperty
      {enabled = enabled,
       fulfillmentUpdatesSpecification = Prelude.Nothing,
       isActive = Prelude.Nothing,
       postFulfillmentStatusSpecification = Prelude.Nothing}
instance ToResourceProperties FulfillmentCodeHookSettingProperty where
  toResourceProperties FulfillmentCodeHookSettingProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.FulfillmentCodeHookSetting",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Enabled" JSON..= enabled]
                           (Prelude.catMaybes
                              [(JSON..=) "FulfillmentUpdatesSpecification"
                                 Prelude.<$> fulfillmentUpdatesSpecification,
                               (JSON..=) "IsActive" Prelude.<$> isActive,
                               (JSON..=) "PostFulfillmentStatusSpecification"
                                 Prelude.<$> postFulfillmentStatusSpecification]))}
instance JSON.ToJSON FulfillmentCodeHookSettingProperty where
  toJSON FulfillmentCodeHookSettingProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Enabled" JSON..= enabled]
              (Prelude.catMaybes
                 [(JSON..=) "FulfillmentUpdatesSpecification"
                    Prelude.<$> fulfillmentUpdatesSpecification,
                  (JSON..=) "IsActive" Prelude.<$> isActive,
                  (JSON..=) "PostFulfillmentStatusSpecification"
                    Prelude.<$> postFulfillmentStatusSpecification])))
instance Property "Enabled" FulfillmentCodeHookSettingProperty where
  type PropertyType "Enabled" FulfillmentCodeHookSettingProperty = Value Prelude.Bool
  set newValue FulfillmentCodeHookSettingProperty {..}
    = FulfillmentCodeHookSettingProperty {enabled = newValue, ..}
instance Property "FulfillmentUpdatesSpecification" FulfillmentCodeHookSettingProperty where
  type PropertyType "FulfillmentUpdatesSpecification" FulfillmentCodeHookSettingProperty = FulfillmentUpdatesSpecificationProperty
  set newValue FulfillmentCodeHookSettingProperty {..}
    = FulfillmentCodeHookSettingProperty
        {fulfillmentUpdatesSpecification = Prelude.pure newValue, ..}
instance Property "IsActive" FulfillmentCodeHookSettingProperty where
  type PropertyType "IsActive" FulfillmentCodeHookSettingProperty = Value Prelude.Bool
  set newValue FulfillmentCodeHookSettingProperty {..}
    = FulfillmentCodeHookSettingProperty
        {isActive = Prelude.pure newValue, ..}
instance Property "PostFulfillmentStatusSpecification" FulfillmentCodeHookSettingProperty where
  type PropertyType "PostFulfillmentStatusSpecification" FulfillmentCodeHookSettingProperty = PostFulfillmentStatusSpecificationProperty
  set newValue FulfillmentCodeHookSettingProperty {..}
    = FulfillmentCodeHookSettingProperty
        {postFulfillmentStatusSpecification = Prelude.pure newValue, ..}