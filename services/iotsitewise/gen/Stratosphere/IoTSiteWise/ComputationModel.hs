module Stratosphere.IoTSiteWise.ComputationModel (
        module Exports, ComputationModel(..), mkComputationModel
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTSiteWise.ComputationModel.ComputationModelConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTSiteWise.ComputationModel.ComputationModelDataBindingValueProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ComputationModel
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotsitewise-computationmodel.html>
    ComputationModel {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotsitewise-computationmodel.html#cfn-iotsitewise-computationmodel-computationmodelconfiguration>
                      computationModelConfiguration :: ComputationModelConfigurationProperty,
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotsitewise-computationmodel.html#cfn-iotsitewise-computationmodel-computationmodeldatabinding>
                      computationModelDataBinding :: (Prelude.Map Prelude.Text ComputationModelDataBindingValueProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotsitewise-computationmodel.html#cfn-iotsitewise-computationmodel-computationmodeldescription>
                      computationModelDescription :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotsitewise-computationmodel.html#cfn-iotsitewise-computationmodel-computationmodelname>
                      computationModelName :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotsitewise-computationmodel.html#cfn-iotsitewise-computationmodel-tags>
                      tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkComputationModel ::
  ComputationModelConfigurationProperty
  -> Prelude.Map Prelude.Text ComputationModelDataBindingValueProperty
     -> Value Prelude.Text -> ComputationModel
mkComputationModel
  computationModelConfiguration
  computationModelDataBinding
  computationModelName
  = ComputationModel
      {haddock_workaround_ = (),
       computationModelConfiguration = computationModelConfiguration,
       computationModelDataBinding = computationModelDataBinding,
       computationModelName = computationModelName,
       computationModelDescription = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties ComputationModel where
  toResourceProperties ComputationModel {..}
    = ResourceProperties
        {awsType = "AWS::IoTSiteWise::ComputationModel",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ComputationModelConfiguration"
                              JSON..= computationModelConfiguration,
                            "ComputationModelDataBinding" JSON..= computationModelDataBinding,
                            "ComputationModelName" JSON..= computationModelName]
                           (Prelude.catMaybes
                              [(JSON..=) "ComputationModelDescription"
                                 Prelude.<$> computationModelDescription,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON ComputationModel where
  toJSON ComputationModel {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ComputationModelConfiguration"
                 JSON..= computationModelConfiguration,
               "ComputationModelDataBinding" JSON..= computationModelDataBinding,
               "ComputationModelName" JSON..= computationModelName]
              (Prelude.catMaybes
                 [(JSON..=) "ComputationModelDescription"
                    Prelude.<$> computationModelDescription,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ComputationModelConfiguration" ComputationModel where
  type PropertyType "ComputationModelConfiguration" ComputationModel = ComputationModelConfigurationProperty
  set newValue ComputationModel {..}
    = ComputationModel {computationModelConfiguration = newValue, ..}
instance Property "ComputationModelDataBinding" ComputationModel where
  type PropertyType "ComputationModelDataBinding" ComputationModel = Prelude.Map Prelude.Text ComputationModelDataBindingValueProperty
  set newValue ComputationModel {..}
    = ComputationModel {computationModelDataBinding = newValue, ..}
instance Property "ComputationModelDescription" ComputationModel where
  type PropertyType "ComputationModelDescription" ComputationModel = Value Prelude.Text
  set newValue ComputationModel {..}
    = ComputationModel
        {computationModelDescription = Prelude.pure newValue, ..}
instance Property "ComputationModelName" ComputationModel where
  type PropertyType "ComputationModelName" ComputationModel = Value Prelude.Text
  set newValue ComputationModel {..}
    = ComputationModel {computationModelName = newValue, ..}
instance Property "Tags" ComputationModel where
  type PropertyType "Tags" ComputationModel = [Tag]
  set newValue ComputationModel {..}
    = ComputationModel {tags = Prelude.pure newValue, ..}