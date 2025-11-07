module Stratosphere.IoTSiteWise.ComputationModel.ComputationModelDataBindingValueProperty (
        module Exports, ComputationModelDataBindingValueProperty(..),
        mkComputationModelDataBindingValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTSiteWise.ComputationModel.AssetModelPropertyBindingValueProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTSiteWise.ComputationModel.AssetPropertyBindingValueProperty as Exports
import Stratosphere.ResourceProperties
data ComputationModelDataBindingValueProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-computationmodel-computationmodeldatabindingvalue.html>
    ComputationModelDataBindingValueProperty {haddock_workaround_ :: (),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-computationmodel-computationmodeldatabindingvalue.html#cfn-iotsitewise-computationmodel-computationmodeldatabindingvalue-assetmodelproperty>
                                              assetModelProperty :: (Prelude.Maybe AssetModelPropertyBindingValueProperty),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-computationmodel-computationmodeldatabindingvalue.html#cfn-iotsitewise-computationmodel-computationmodeldatabindingvalue-assetproperty>
                                              assetProperty :: (Prelude.Maybe AssetPropertyBindingValueProperty),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-computationmodel-computationmodeldatabindingvalue.html#cfn-iotsitewise-computationmodel-computationmodeldatabindingvalue-list>
                                              list :: (Prelude.Maybe [ComputationModelDataBindingValueProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkComputationModelDataBindingValueProperty ::
  ComputationModelDataBindingValueProperty
mkComputationModelDataBindingValueProperty
  = ComputationModelDataBindingValueProperty
      {haddock_workaround_ = (), assetModelProperty = Prelude.Nothing,
       assetProperty = Prelude.Nothing, list = Prelude.Nothing}
instance ToResourceProperties ComputationModelDataBindingValueProperty where
  toResourceProperties ComputationModelDataBindingValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTSiteWise::ComputationModel.ComputationModelDataBindingValue",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AssetModelProperty" Prelude.<$> assetModelProperty,
                            (JSON..=) "AssetProperty" Prelude.<$> assetProperty,
                            (JSON..=) "List" Prelude.<$> list])}
instance JSON.ToJSON ComputationModelDataBindingValueProperty where
  toJSON ComputationModelDataBindingValueProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AssetModelProperty" Prelude.<$> assetModelProperty,
               (JSON..=) "AssetProperty" Prelude.<$> assetProperty,
               (JSON..=) "List" Prelude.<$> list]))
instance Property "AssetModelProperty" ComputationModelDataBindingValueProperty where
  type PropertyType "AssetModelProperty" ComputationModelDataBindingValueProperty = AssetModelPropertyBindingValueProperty
  set newValue ComputationModelDataBindingValueProperty {..}
    = ComputationModelDataBindingValueProperty
        {assetModelProperty = Prelude.pure newValue, ..}
instance Property "AssetProperty" ComputationModelDataBindingValueProperty where
  type PropertyType "AssetProperty" ComputationModelDataBindingValueProperty = AssetPropertyBindingValueProperty
  set newValue ComputationModelDataBindingValueProperty {..}
    = ComputationModelDataBindingValueProperty
        {assetProperty = Prelude.pure newValue, ..}
instance Property "List" ComputationModelDataBindingValueProperty where
  type PropertyType "List" ComputationModelDataBindingValueProperty = [ComputationModelDataBindingValueProperty]
  set newValue ComputationModelDataBindingValueProperty {..}
    = ComputationModelDataBindingValueProperty
        {list = Prelude.pure newValue, ..}