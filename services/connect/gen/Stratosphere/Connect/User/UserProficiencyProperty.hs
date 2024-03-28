module Stratosphere.Connect.User.UserProficiencyProperty (
        UserProficiencyProperty(..), mkUserProficiencyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UserProficiencyProperty
  = UserProficiencyProperty {attributeName :: (Value Prelude.Text),
                             attributeValue :: (Value Prelude.Text),
                             level :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUserProficiencyProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Double -> UserProficiencyProperty
mkUserProficiencyProperty attributeName attributeValue level
  = UserProficiencyProperty
      {attributeName = attributeName, attributeValue = attributeValue,
       level = level}
instance ToResourceProperties UserProficiencyProperty where
  toResourceProperties UserProficiencyProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::User.UserProficiency",
         supportsTags = Prelude.False,
         properties = ["AttributeName" JSON..= attributeName,
                       "AttributeValue" JSON..= attributeValue, "Level" JSON..= level]}
instance JSON.ToJSON UserProficiencyProperty where
  toJSON UserProficiencyProperty {..}
    = JSON.object
        ["AttributeName" JSON..= attributeName,
         "AttributeValue" JSON..= attributeValue, "Level" JSON..= level]
instance Property "AttributeName" UserProficiencyProperty where
  type PropertyType "AttributeName" UserProficiencyProperty = Value Prelude.Text
  set newValue UserProficiencyProperty {..}
    = UserProficiencyProperty {attributeName = newValue, ..}
instance Property "AttributeValue" UserProficiencyProperty where
  type PropertyType "AttributeValue" UserProficiencyProperty = Value Prelude.Text
  set newValue UserProficiencyProperty {..}
    = UserProficiencyProperty {attributeValue = newValue, ..}
instance Property "Level" UserProficiencyProperty where
  type PropertyType "Level" UserProficiencyProperty = Value Prelude.Double
  set newValue UserProficiencyProperty {..}
    = UserProficiencyProperty {level = newValue, ..}