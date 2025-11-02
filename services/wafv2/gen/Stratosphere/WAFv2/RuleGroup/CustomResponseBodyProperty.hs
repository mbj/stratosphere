module Stratosphere.WAFv2.RuleGroup.CustomResponseBodyProperty (
        CustomResponseBodyProperty(..), mkCustomResponseBodyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomResponseBodyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-customresponsebody.html>
    CustomResponseBodyProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-customresponsebody.html#cfn-wafv2-rulegroup-customresponsebody-content>
                                content :: (Value Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-customresponsebody.html#cfn-wafv2-rulegroup-customresponsebody-contenttype>
                                contentType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomResponseBodyProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> CustomResponseBodyProperty
mkCustomResponseBodyProperty content contentType
  = CustomResponseBodyProperty
      {haddock_workaround_ = (), content = content,
       contentType = contentType}
instance ToResourceProperties CustomResponseBodyProperty where
  toResourceProperties CustomResponseBodyProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::RuleGroup.CustomResponseBody",
         supportsTags = Prelude.False,
         properties = ["Content" JSON..= content,
                       "ContentType" JSON..= contentType]}
instance JSON.ToJSON CustomResponseBodyProperty where
  toJSON CustomResponseBodyProperty {..}
    = JSON.object
        ["Content" JSON..= content, "ContentType" JSON..= contentType]
instance Property "Content" CustomResponseBodyProperty where
  type PropertyType "Content" CustomResponseBodyProperty = Value Prelude.Text
  set newValue CustomResponseBodyProperty {..}
    = CustomResponseBodyProperty {content = newValue, ..}
instance Property "ContentType" CustomResponseBodyProperty where
  type PropertyType "ContentType" CustomResponseBodyProperty = Value Prelude.Text
  set newValue CustomResponseBodyProperty {..}
    = CustomResponseBodyProperty {contentType = newValue, ..}