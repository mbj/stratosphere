module Stratosphere.Batch.ConsumableResource (
        ConsumableResource(..), mkConsumableResource
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConsumableResource
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-consumableresource.html>
    ConsumableResource {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-consumableresource.html#cfn-batch-consumableresource-consumableresourcename>
                        consumableResourceName :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-consumableresource.html#cfn-batch-consumableresource-resourcetype>
                        resourceType :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-consumableresource.html#cfn-batch-consumableresource-tags>
                        tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-consumableresource.html#cfn-batch-consumableresource-totalquantity>
                        totalQuantity :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConsumableResource ::
  Value Prelude.Text -> Value Prelude.Integer -> ConsumableResource
mkConsumableResource resourceType totalQuantity
  = ConsumableResource
      {haddock_workaround_ = (), resourceType = resourceType,
       totalQuantity = totalQuantity,
       consumableResourceName = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties ConsumableResource where
  toResourceProperties ConsumableResource {..}
    = ResourceProperties
        {awsType = "AWS::Batch::ConsumableResource",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ResourceType" JSON..= resourceType,
                            "TotalQuantity" JSON..= totalQuantity]
                           (Prelude.catMaybes
                              [(JSON..=) "ConsumableResourceName"
                                 Prelude.<$> consumableResourceName,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON ConsumableResource where
  toJSON ConsumableResource {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ResourceType" JSON..= resourceType,
               "TotalQuantity" JSON..= totalQuantity]
              (Prelude.catMaybes
                 [(JSON..=) "ConsumableResourceName"
                    Prelude.<$> consumableResourceName,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ConsumableResourceName" ConsumableResource where
  type PropertyType "ConsumableResourceName" ConsumableResource = Value Prelude.Text
  set newValue ConsumableResource {..}
    = ConsumableResource
        {consumableResourceName = Prelude.pure newValue, ..}
instance Property "ResourceType" ConsumableResource where
  type PropertyType "ResourceType" ConsumableResource = Value Prelude.Text
  set newValue ConsumableResource {..}
    = ConsumableResource {resourceType = newValue, ..}
instance Property "Tags" ConsumableResource where
  type PropertyType "Tags" ConsumableResource = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue ConsumableResource {..}
    = ConsumableResource {tags = Prelude.pure newValue, ..}
instance Property "TotalQuantity" ConsumableResource where
  type PropertyType "TotalQuantity" ConsumableResource = Value Prelude.Integer
  set newValue ConsumableResource {..}
    = ConsumableResource {totalQuantity = newValue, ..}