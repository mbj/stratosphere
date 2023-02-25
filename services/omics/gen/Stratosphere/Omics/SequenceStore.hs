module Stratosphere.Omics.SequenceStore (
        module Exports, SequenceStore(..), mkSequenceStore
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Omics.SequenceStore.SseConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SequenceStore
  = SequenceStore {description :: (Prelude.Maybe (Value Prelude.Text)),
                   name :: (Value Prelude.Text),
                   sseConfig :: (Prelude.Maybe SseConfigProperty),
                   tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
mkSequenceStore :: Value Prelude.Text -> SequenceStore
mkSequenceStore name
  = SequenceStore
      {name = name, description = Prelude.Nothing,
       sseConfig = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties SequenceStore where
  toResourceProperties SequenceStore {..}
    = ResourceProperties
        {awsType = "AWS::Omics::SequenceStore",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "SseConfig" Prelude.<$> sseConfig,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON SequenceStore where
  toJSON SequenceStore {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "SseConfig" Prelude.<$> sseConfig,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" SequenceStore where
  type PropertyType "Description" SequenceStore = Value Prelude.Text
  set newValue SequenceStore {..}
    = SequenceStore {description = Prelude.pure newValue, ..}
instance Property "Name" SequenceStore where
  type PropertyType "Name" SequenceStore = Value Prelude.Text
  set newValue SequenceStore {..}
    = SequenceStore {name = newValue, ..}
instance Property "SseConfig" SequenceStore where
  type PropertyType "SseConfig" SequenceStore = SseConfigProperty
  set newValue SequenceStore {..}
    = SequenceStore {sseConfig = Prelude.pure newValue, ..}
instance Property "Tags" SequenceStore where
  type PropertyType "Tags" SequenceStore = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue SequenceStore {..}
    = SequenceStore {tags = Prelude.pure newValue, ..}