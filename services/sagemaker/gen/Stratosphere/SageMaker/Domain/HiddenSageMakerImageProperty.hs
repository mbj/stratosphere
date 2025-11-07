module Stratosphere.SageMaker.Domain.HiddenSageMakerImageProperty (
        HiddenSageMakerImageProperty(..), mkHiddenSageMakerImageProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HiddenSageMakerImageProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-hiddensagemakerimage.html>
    HiddenSageMakerImageProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-hiddensagemakerimage.html#cfn-sagemaker-domain-hiddensagemakerimage-sagemakerimagename>
                                  sageMakerImageName :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-hiddensagemakerimage.html#cfn-sagemaker-domain-hiddensagemakerimage-versionaliases>
                                  versionAliases :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHiddenSageMakerImageProperty :: HiddenSageMakerImageProperty
mkHiddenSageMakerImageProperty
  = HiddenSageMakerImageProperty
      {haddock_workaround_ = (), sageMakerImageName = Prelude.Nothing,
       versionAliases = Prelude.Nothing}
instance ToResourceProperties HiddenSageMakerImageProperty where
  toResourceProperties HiddenSageMakerImageProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Domain.HiddenSageMakerImage",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SageMakerImageName" Prelude.<$> sageMakerImageName,
                            (JSON..=) "VersionAliases" Prelude.<$> versionAliases])}
instance JSON.ToJSON HiddenSageMakerImageProperty where
  toJSON HiddenSageMakerImageProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SageMakerImageName" Prelude.<$> sageMakerImageName,
               (JSON..=) "VersionAliases" Prelude.<$> versionAliases]))
instance Property "SageMakerImageName" HiddenSageMakerImageProperty where
  type PropertyType "SageMakerImageName" HiddenSageMakerImageProperty = Value Prelude.Text
  set newValue HiddenSageMakerImageProperty {..}
    = HiddenSageMakerImageProperty
        {sageMakerImageName = Prelude.pure newValue, ..}
instance Property "VersionAliases" HiddenSageMakerImageProperty where
  type PropertyType "VersionAliases" HiddenSageMakerImageProperty = ValueList Prelude.Text
  set newValue HiddenSageMakerImageProperty {..}
    = HiddenSageMakerImageProperty
        {versionAliases = Prelude.pure newValue, ..}