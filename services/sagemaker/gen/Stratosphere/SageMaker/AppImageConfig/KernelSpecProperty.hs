module Stratosphere.SageMaker.AppImageConfig.KernelSpecProperty (
        KernelSpecProperty(..), mkKernelSpecProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KernelSpecProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-appimageconfig-kernelspec.html>
    KernelSpecProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-appimageconfig-kernelspec.html#cfn-sagemaker-appimageconfig-kernelspec-displayname>
                        displayName :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-appimageconfig-kernelspec.html#cfn-sagemaker-appimageconfig-kernelspec-name>
                        name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKernelSpecProperty :: Value Prelude.Text -> KernelSpecProperty
mkKernelSpecProperty name
  = KernelSpecProperty
      {haddock_workaround_ = (), name = name,
       displayName = Prelude.Nothing}
instance ToResourceProperties KernelSpecProperty where
  toResourceProperties KernelSpecProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::AppImageConfig.KernelSpec",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "DisplayName" Prelude.<$> displayName]))}
instance JSON.ToJSON KernelSpecProperty where
  toJSON KernelSpecProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "DisplayName" Prelude.<$> displayName])))
instance Property "DisplayName" KernelSpecProperty where
  type PropertyType "DisplayName" KernelSpecProperty = Value Prelude.Text
  set newValue KernelSpecProperty {..}
    = KernelSpecProperty {displayName = Prelude.pure newValue, ..}
instance Property "Name" KernelSpecProperty where
  type PropertyType "Name" KernelSpecProperty = Value Prelude.Text
  set newValue KernelSpecProperty {..}
    = KernelSpecProperty {name = newValue, ..}