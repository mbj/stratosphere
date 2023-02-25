module Stratosphere.Omics.VariantStore (
        module Exports, VariantStore(..), mkVariantStore
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Omics.VariantStore.ReferenceItemProperty as Exports
import {-# SOURCE #-} Stratosphere.Omics.VariantStore.SseConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VariantStore
  = VariantStore {description :: (Prelude.Maybe (Value Prelude.Text)),
                  name :: (Value Prelude.Text),
                  reference :: ReferenceItemProperty,
                  sseConfig :: (Prelude.Maybe SseConfigProperty),
                  tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
mkVariantStore ::
  Value Prelude.Text -> ReferenceItemProperty -> VariantStore
mkVariantStore name reference
  = VariantStore
      {name = name, reference = reference, description = Prelude.Nothing,
       sseConfig = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties VariantStore where
  toResourceProperties VariantStore {..}
    = ResourceProperties
        {awsType = "AWS::Omics::VariantStore",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "Reference" JSON..= reference]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "SseConfig" Prelude.<$> sseConfig,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON VariantStore where
  toJSON VariantStore {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "Reference" JSON..= reference]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "SseConfig" Prelude.<$> sseConfig,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" VariantStore where
  type PropertyType "Description" VariantStore = Value Prelude.Text
  set newValue VariantStore {..}
    = VariantStore {description = Prelude.pure newValue, ..}
instance Property "Name" VariantStore where
  type PropertyType "Name" VariantStore = Value Prelude.Text
  set newValue VariantStore {..} = VariantStore {name = newValue, ..}
instance Property "Reference" VariantStore where
  type PropertyType "Reference" VariantStore = ReferenceItemProperty
  set newValue VariantStore {..}
    = VariantStore {reference = newValue, ..}
instance Property "SseConfig" VariantStore where
  type PropertyType "SseConfig" VariantStore = SseConfigProperty
  set newValue VariantStore {..}
    = VariantStore {sseConfig = Prelude.pure newValue, ..}
instance Property "Tags" VariantStore where
  type PropertyType "Tags" VariantStore = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue VariantStore {..}
    = VariantStore {tags = Prelude.pure newValue, ..}