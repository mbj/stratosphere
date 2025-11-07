module Stratosphere.ECR.Repository.ImageTagMutabilityExclusionFilterProperty (
        ImageTagMutabilityExclusionFilterProperty(..),
        mkImageTagMutabilityExclusionFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ImageTagMutabilityExclusionFilterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecr-repository-imagetagmutabilityexclusionfilter.html>
    ImageTagMutabilityExclusionFilterProperty {haddock_workaround_ :: (),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecr-repository-imagetagmutabilityexclusionfilter.html#cfn-ecr-repository-imagetagmutabilityexclusionfilter-imagetagmutabilityexclusionfiltertype>
                                               imageTagMutabilityExclusionFilterType :: (Value Prelude.Text),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecr-repository-imagetagmutabilityexclusionfilter.html#cfn-ecr-repository-imagetagmutabilityexclusionfilter-imagetagmutabilityexclusionfiltervalue>
                                               imageTagMutabilityExclusionFilterValue :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkImageTagMutabilityExclusionFilterProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> ImageTagMutabilityExclusionFilterProperty
mkImageTagMutabilityExclusionFilterProperty
  imageTagMutabilityExclusionFilterType
  imageTagMutabilityExclusionFilterValue
  = ImageTagMutabilityExclusionFilterProperty
      {haddock_workaround_ = (),
       imageTagMutabilityExclusionFilterType = imageTagMutabilityExclusionFilterType,
       imageTagMutabilityExclusionFilterValue = imageTagMutabilityExclusionFilterValue}
instance ToResourceProperties ImageTagMutabilityExclusionFilterProperty where
  toResourceProperties ImageTagMutabilityExclusionFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECR::Repository.ImageTagMutabilityExclusionFilter",
         supportsTags = Prelude.False,
         properties = ["ImageTagMutabilityExclusionFilterType"
                         JSON..= imageTagMutabilityExclusionFilterType,
                       "ImageTagMutabilityExclusionFilterValue"
                         JSON..= imageTagMutabilityExclusionFilterValue]}
instance JSON.ToJSON ImageTagMutabilityExclusionFilterProperty where
  toJSON ImageTagMutabilityExclusionFilterProperty {..}
    = JSON.object
        ["ImageTagMutabilityExclusionFilterType"
           JSON..= imageTagMutabilityExclusionFilterType,
         "ImageTagMutabilityExclusionFilterValue"
           JSON..= imageTagMutabilityExclusionFilterValue]
instance Property "ImageTagMutabilityExclusionFilterType" ImageTagMutabilityExclusionFilterProperty where
  type PropertyType "ImageTagMutabilityExclusionFilterType" ImageTagMutabilityExclusionFilterProperty = Value Prelude.Text
  set newValue ImageTagMutabilityExclusionFilterProperty {..}
    = ImageTagMutabilityExclusionFilterProperty
        {imageTagMutabilityExclusionFilterType = newValue, ..}
instance Property "ImageTagMutabilityExclusionFilterValue" ImageTagMutabilityExclusionFilterProperty where
  type PropertyType "ImageTagMutabilityExclusionFilterValue" ImageTagMutabilityExclusionFilterProperty = Value Prelude.Text
  set newValue ImageTagMutabilityExclusionFilterProperty {..}
    = ImageTagMutabilityExclusionFilterProperty
        {imageTagMutabilityExclusionFilterValue = newValue, ..}