module Stratosphere.Omics.AnnotationStore (
        module Exports, AnnotationStore(..), mkAnnotationStore
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Omics.AnnotationStore.ReferenceItemProperty as Exports
import {-# SOURCE #-} Stratosphere.Omics.AnnotationStore.SseConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Omics.AnnotationStore.StoreOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AnnotationStore
  = AnnotationStore {description :: (Prelude.Maybe (Value Prelude.Text)),
                     name :: (Value Prelude.Text),
                     reference :: (Prelude.Maybe ReferenceItemProperty),
                     sseConfig :: (Prelude.Maybe SseConfigProperty),
                     storeFormat :: (Value Prelude.Text),
                     storeOptions :: (Prelude.Maybe StoreOptionsProperty),
                     tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAnnotationStore ::
  Value Prelude.Text -> Value Prelude.Text -> AnnotationStore
mkAnnotationStore name storeFormat
  = AnnotationStore
      {name = name, storeFormat = storeFormat,
       description = Prelude.Nothing, reference = Prelude.Nothing,
       sseConfig = Prelude.Nothing, storeOptions = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties AnnotationStore where
  toResourceProperties AnnotationStore {..}
    = ResourceProperties
        {awsType = "AWS::Omics::AnnotationStore",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "StoreFormat" JSON..= storeFormat]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Reference" Prelude.<$> reference,
                               (JSON..=) "SseConfig" Prelude.<$> sseConfig,
                               (JSON..=) "StoreOptions" Prelude.<$> storeOptions,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON AnnotationStore where
  toJSON AnnotationStore {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "StoreFormat" JSON..= storeFormat]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Reference" Prelude.<$> reference,
                  (JSON..=) "SseConfig" Prelude.<$> sseConfig,
                  (JSON..=) "StoreOptions" Prelude.<$> storeOptions,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" AnnotationStore where
  type PropertyType "Description" AnnotationStore = Value Prelude.Text
  set newValue AnnotationStore {..}
    = AnnotationStore {description = Prelude.pure newValue, ..}
instance Property "Name" AnnotationStore where
  type PropertyType "Name" AnnotationStore = Value Prelude.Text
  set newValue AnnotationStore {..}
    = AnnotationStore {name = newValue, ..}
instance Property "Reference" AnnotationStore where
  type PropertyType "Reference" AnnotationStore = ReferenceItemProperty
  set newValue AnnotationStore {..}
    = AnnotationStore {reference = Prelude.pure newValue, ..}
instance Property "SseConfig" AnnotationStore where
  type PropertyType "SseConfig" AnnotationStore = SseConfigProperty
  set newValue AnnotationStore {..}
    = AnnotationStore {sseConfig = Prelude.pure newValue, ..}
instance Property "StoreFormat" AnnotationStore where
  type PropertyType "StoreFormat" AnnotationStore = Value Prelude.Text
  set newValue AnnotationStore {..}
    = AnnotationStore {storeFormat = newValue, ..}
instance Property "StoreOptions" AnnotationStore where
  type PropertyType "StoreOptions" AnnotationStore = StoreOptionsProperty
  set newValue AnnotationStore {..}
    = AnnotationStore {storeOptions = Prelude.pure newValue, ..}
instance Property "Tags" AnnotationStore where
  type PropertyType "Tags" AnnotationStore = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue AnnotationStore {..}
    = AnnotationStore {tags = Prelude.pure newValue, ..}