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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-omics-variantstore.html>
    VariantStore {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-omics-variantstore.html#cfn-omics-variantstore-description>
                  description :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-omics-variantstore.html#cfn-omics-variantstore-name>
                  name :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-omics-variantstore.html#cfn-omics-variantstore-reference>
                  reference :: ReferenceItemProperty,
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-omics-variantstore.html#cfn-omics-variantstore-sseconfig>
                  sseConfig :: (Prelude.Maybe SseConfigProperty),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-omics-variantstore.html#cfn-omics-variantstore-tags>
                  tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVariantStore ::
  Value Prelude.Text -> ReferenceItemProperty -> VariantStore
mkVariantStore name reference
  = VariantStore
      {haddock_workaround_ = (), name = name, reference = reference,
       description = Prelude.Nothing, sseConfig = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties VariantStore where
  toResourceProperties VariantStore {..}
    = ResourceProperties
        {awsType = "AWS::Omics::VariantStore", supportsTags = Prelude.True,
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