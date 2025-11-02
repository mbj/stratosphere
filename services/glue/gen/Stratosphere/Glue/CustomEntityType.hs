module Stratosphere.Glue.CustomEntityType (
        CustomEntityType(..), mkCustomEntityType
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomEntityType
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-customentitytype.html>
    CustomEntityType {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-customentitytype.html#cfn-glue-customentitytype-contextwords>
                      contextWords :: (Prelude.Maybe (ValueList Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-customentitytype.html#cfn-glue-customentitytype-name>
                      name :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-customentitytype.html#cfn-glue-customentitytype-regexstring>
                      regexString :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-customentitytype.html#cfn-glue-customentitytype-tags>
                      tags :: (Prelude.Maybe JSON.Object)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomEntityType :: CustomEntityType
mkCustomEntityType
  = CustomEntityType
      {haddock_workaround_ = (), contextWords = Prelude.Nothing,
       name = Prelude.Nothing, regexString = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties CustomEntityType where
  toResourceProperties CustomEntityType {..}
    = ResourceProperties
        {awsType = "AWS::Glue::CustomEntityType",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ContextWords" Prelude.<$> contextWords,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "RegexString" Prelude.<$> regexString,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON CustomEntityType where
  toJSON CustomEntityType {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ContextWords" Prelude.<$> contextWords,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "RegexString" Prelude.<$> regexString,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "ContextWords" CustomEntityType where
  type PropertyType "ContextWords" CustomEntityType = ValueList Prelude.Text
  set newValue CustomEntityType {..}
    = CustomEntityType {contextWords = Prelude.pure newValue, ..}
instance Property "Name" CustomEntityType where
  type PropertyType "Name" CustomEntityType = Value Prelude.Text
  set newValue CustomEntityType {..}
    = CustomEntityType {name = Prelude.pure newValue, ..}
instance Property "RegexString" CustomEntityType where
  type PropertyType "RegexString" CustomEntityType = Value Prelude.Text
  set newValue CustomEntityType {..}
    = CustomEntityType {regexString = Prelude.pure newValue, ..}
instance Property "Tags" CustomEntityType where
  type PropertyType "Tags" CustomEntityType = JSON.Object
  set newValue CustomEntityType {..}
    = CustomEntityType {tags = Prelude.pure newValue, ..}