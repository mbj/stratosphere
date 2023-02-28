module Stratosphere.SageMaker.ModelPackage.ModelPackageStatusItemProperty (
        ModelPackageStatusItemProperty(..),
        mkModelPackageStatusItemProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ModelPackageStatusItemProperty
  = ModelPackageStatusItemProperty {failureReason :: (Prelude.Maybe (Value Prelude.Text)),
                                    name :: (Value Prelude.Text),
                                    status :: (Value Prelude.Text)}
mkModelPackageStatusItemProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> ModelPackageStatusItemProperty
mkModelPackageStatusItemProperty name status
  = ModelPackageStatusItemProperty
      {name = name, status = status, failureReason = Prelude.Nothing}
instance ToResourceProperties ModelPackageStatusItemProperty where
  toResourceProperties ModelPackageStatusItemProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelPackage.ModelPackageStatusItem",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "Status" JSON..= status]
                           (Prelude.catMaybes
                              [(JSON..=) "FailureReason" Prelude.<$> failureReason]))}
instance JSON.ToJSON ModelPackageStatusItemProperty where
  toJSON ModelPackageStatusItemProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "Status" JSON..= status]
              (Prelude.catMaybes
                 [(JSON..=) "FailureReason" Prelude.<$> failureReason])))
instance Property "FailureReason" ModelPackageStatusItemProperty where
  type PropertyType "FailureReason" ModelPackageStatusItemProperty = Value Prelude.Text
  set newValue ModelPackageStatusItemProperty {..}
    = ModelPackageStatusItemProperty
        {failureReason = Prelude.pure newValue, ..}
instance Property "Name" ModelPackageStatusItemProperty where
  type PropertyType "Name" ModelPackageStatusItemProperty = Value Prelude.Text
  set newValue ModelPackageStatusItemProperty {..}
    = ModelPackageStatusItemProperty {name = newValue, ..}
instance Property "Status" ModelPackageStatusItemProperty where
  type PropertyType "Status" ModelPackageStatusItemProperty = Value Prelude.Text
  set newValue ModelPackageStatusItemProperty {..}
    = ModelPackageStatusItemProperty {status = newValue, ..}