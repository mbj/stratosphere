module Stratosphere.Greengrass.ResourceDefinition.SageMakerMachineLearningModelResourceDataProperty (
        module Exports,
        SageMakerMachineLearningModelResourceDataProperty(..),
        mkSageMakerMachineLearningModelResourceDataProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Greengrass.ResourceDefinition.ResourceDownloadOwnerSettingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SageMakerMachineLearningModelResourceDataProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-sagemakermachinelearningmodelresourcedata.html>
    SageMakerMachineLearningModelResourceDataProperty {haddock_workaround_ :: (),
                                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-sagemakermachinelearningmodelresourcedata.html#cfn-greengrass-resourcedefinition-sagemakermachinelearningmodelresourcedata-destinationpath>
                                                       destinationPath :: (Value Prelude.Text),
                                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-sagemakermachinelearningmodelresourcedata.html#cfn-greengrass-resourcedefinition-sagemakermachinelearningmodelresourcedata-ownersetting>
                                                       ownerSetting :: (Prelude.Maybe ResourceDownloadOwnerSettingProperty),
                                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-sagemakermachinelearningmodelresourcedata.html#cfn-greengrass-resourcedefinition-sagemakermachinelearningmodelresourcedata-sagemakerjobarn>
                                                       sageMakerJobArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSageMakerMachineLearningModelResourceDataProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> SageMakerMachineLearningModelResourceDataProperty
mkSageMakerMachineLearningModelResourceDataProperty
  destinationPath
  sageMakerJobArn
  = SageMakerMachineLearningModelResourceDataProperty
      {haddock_workaround_ = (), destinationPath = destinationPath,
       sageMakerJobArn = sageMakerJobArn, ownerSetting = Prelude.Nothing}
instance ToResourceProperties SageMakerMachineLearningModelResourceDataProperty where
  toResourceProperties
    SageMakerMachineLearningModelResourceDataProperty {..}
    = ResourceProperties
        {awsType = "AWS::Greengrass::ResourceDefinition.SageMakerMachineLearningModelResourceData",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DestinationPath" JSON..= destinationPath,
                            "SageMakerJobArn" JSON..= sageMakerJobArn]
                           (Prelude.catMaybes
                              [(JSON..=) "OwnerSetting" Prelude.<$> ownerSetting]))}
instance JSON.ToJSON SageMakerMachineLearningModelResourceDataProperty where
  toJSON SageMakerMachineLearningModelResourceDataProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DestinationPath" JSON..= destinationPath,
               "SageMakerJobArn" JSON..= sageMakerJobArn]
              (Prelude.catMaybes
                 [(JSON..=) "OwnerSetting" Prelude.<$> ownerSetting])))
instance Property "DestinationPath" SageMakerMachineLearningModelResourceDataProperty where
  type PropertyType "DestinationPath" SageMakerMachineLearningModelResourceDataProperty = Value Prelude.Text
  set newValue SageMakerMachineLearningModelResourceDataProperty {..}
    = SageMakerMachineLearningModelResourceDataProperty
        {destinationPath = newValue, ..}
instance Property "OwnerSetting" SageMakerMachineLearningModelResourceDataProperty where
  type PropertyType "OwnerSetting" SageMakerMachineLearningModelResourceDataProperty = ResourceDownloadOwnerSettingProperty
  set newValue SageMakerMachineLearningModelResourceDataProperty {..}
    = SageMakerMachineLearningModelResourceDataProperty
        {ownerSetting = Prelude.pure newValue, ..}
instance Property "SageMakerJobArn" SageMakerMachineLearningModelResourceDataProperty where
  type PropertyType "SageMakerJobArn" SageMakerMachineLearningModelResourceDataProperty = Value Prelude.Text
  set newValue SageMakerMachineLearningModelResourceDataProperty {..}
    = SageMakerMachineLearningModelResourceDataProperty
        {sageMakerJobArn = newValue, ..}