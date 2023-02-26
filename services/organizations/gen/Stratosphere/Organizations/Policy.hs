module Stratosphere.Organizations.Policy (
        Policy(..), mkPolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Policy
  = Policy {content :: (Value Prelude.Text),
            description :: (Prelude.Maybe (Value Prelude.Text)),
            name :: (Value Prelude.Text),
            tags :: (Prelude.Maybe [Tag]),
            targetIds :: (Prelude.Maybe (ValueList Prelude.Text)),
            type' :: (Value Prelude.Text)}
mkPolicy ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> Policy
mkPolicy content name type'
  = Policy
      {content = content, name = name, type' = type',
       description = Prelude.Nothing, tags = Prelude.Nothing,
       targetIds = Prelude.Nothing}
instance ToResourceProperties Policy where
  toResourceProperties Policy {..}
    = ResourceProperties
        {awsType = "AWS::Organizations::Policy",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Content" JSON..= content, "Name" JSON..= name,
                            "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "TargetIds" Prelude.<$> targetIds]))}
instance JSON.ToJSON Policy where
  toJSON Policy {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Content" JSON..= content, "Name" JSON..= name,
               "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "TargetIds" Prelude.<$> targetIds])))
instance Property "Content" Policy where
  type PropertyType "Content" Policy = Value Prelude.Text
  set newValue Policy {..} = Policy {content = newValue, ..}
instance Property "Description" Policy where
  type PropertyType "Description" Policy = Value Prelude.Text
  set newValue Policy {..}
    = Policy {description = Prelude.pure newValue, ..}
instance Property "Name" Policy where
  type PropertyType "Name" Policy = Value Prelude.Text
  set newValue Policy {..} = Policy {name = newValue, ..}
instance Property "Tags" Policy where
  type PropertyType "Tags" Policy = [Tag]
  set newValue Policy {..}
    = Policy {tags = Prelude.pure newValue, ..}
instance Property "TargetIds" Policy where
  type PropertyType "TargetIds" Policy = ValueList Prelude.Text
  set newValue Policy {..}
    = Policy {targetIds = Prelude.pure newValue, ..}
instance Property "Type" Policy where
  type PropertyType "Type" Policy = Value Prelude.Text
  set newValue Policy {..} = Policy {type' = newValue, ..}