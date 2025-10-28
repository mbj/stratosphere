module Stratosphere.Omics.ReferenceStore (
        module Exports, ReferenceStore(..), mkReferenceStore
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Omics.ReferenceStore.SseConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ReferenceStore
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-omics-referencestore.html>
    ReferenceStore {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-omics-referencestore.html#cfn-omics-referencestore-description>
                    description :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-omics-referencestore.html#cfn-omics-referencestore-name>
                    name :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-omics-referencestore.html#cfn-omics-referencestore-sseconfig>
                    sseConfig :: (Prelude.Maybe SseConfigProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-omics-referencestore.html#cfn-omics-referencestore-tags>
                    tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReferenceStore :: Value Prelude.Text -> ReferenceStore
mkReferenceStore name
  = ReferenceStore
      {haddock_workaround_ = (), name = name,
       description = Prelude.Nothing, sseConfig = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties ReferenceStore where
  toResourceProperties ReferenceStore {..}
    = ResourceProperties
        {awsType = "AWS::Omics::ReferenceStore",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "SseConfig" Prelude.<$> sseConfig,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON ReferenceStore where
  toJSON ReferenceStore {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "SseConfig" Prelude.<$> sseConfig,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" ReferenceStore where
  type PropertyType "Description" ReferenceStore = Value Prelude.Text
  set newValue ReferenceStore {..}
    = ReferenceStore {description = Prelude.pure newValue, ..}
instance Property "Name" ReferenceStore where
  type PropertyType "Name" ReferenceStore = Value Prelude.Text
  set newValue ReferenceStore {..}
    = ReferenceStore {name = newValue, ..}
instance Property "SseConfig" ReferenceStore where
  type PropertyType "SseConfig" ReferenceStore = SseConfigProperty
  set newValue ReferenceStore {..}
    = ReferenceStore {sseConfig = Prelude.pure newValue, ..}
instance Property "Tags" ReferenceStore where
  type PropertyType "Tags" ReferenceStore = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue ReferenceStore {..}
    = ReferenceStore {tags = Prelude.pure newValue, ..}