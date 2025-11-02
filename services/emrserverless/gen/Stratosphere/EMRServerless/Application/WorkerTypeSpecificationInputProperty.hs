module Stratosphere.EMRServerless.Application.WorkerTypeSpecificationInputProperty (
        module Exports, WorkerTypeSpecificationInputProperty(..),
        mkWorkerTypeSpecificationInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EMRServerless.Application.ImageConfigurationInputProperty as Exports
import Stratosphere.ResourceProperties
data WorkerTypeSpecificationInputProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emrserverless-application-workertypespecificationinput.html>
    WorkerTypeSpecificationInputProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emrserverless-application-workertypespecificationinput.html#cfn-emrserverless-application-workertypespecificationinput-imageconfiguration>
                                          imageConfiguration :: (Prelude.Maybe ImageConfigurationInputProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWorkerTypeSpecificationInputProperty ::
  WorkerTypeSpecificationInputProperty
mkWorkerTypeSpecificationInputProperty
  = WorkerTypeSpecificationInputProperty
      {haddock_workaround_ = (), imageConfiguration = Prelude.Nothing}
instance ToResourceProperties WorkerTypeSpecificationInputProperty where
  toResourceProperties WorkerTypeSpecificationInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMRServerless::Application.WorkerTypeSpecificationInput",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ImageConfiguration" Prelude.<$> imageConfiguration])}
instance JSON.ToJSON WorkerTypeSpecificationInputProperty where
  toJSON WorkerTypeSpecificationInputProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ImageConfiguration" Prelude.<$> imageConfiguration]))
instance Property "ImageConfiguration" WorkerTypeSpecificationInputProperty where
  type PropertyType "ImageConfiguration" WorkerTypeSpecificationInputProperty = ImageConfigurationInputProperty
  set newValue WorkerTypeSpecificationInputProperty {..}
    = WorkerTypeSpecificationInputProperty
        {imageConfiguration = Prelude.pure newValue, ..}