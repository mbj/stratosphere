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
  = SageMakerMachineLearningModelResourceDataProperty {destinationPath :: (Value Prelude.Text),
                                                       ownerSetting :: (Prelude.Maybe ResourceDownloadOwnerSettingProperty),
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
      {destinationPath = destinationPath,
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