module Stratosphere.Macie.AllowList (
        module Exports, AllowList(..), mkAllowList
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Macie.AllowList.CriteriaProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data AllowList
  = AllowList {criteria :: CriteriaProperty,
               description :: (Prelude.Maybe (Value Prelude.Text)),
               name :: (Value Prelude.Text),
               tags :: (Prelude.Maybe [Tag])}
mkAllowList :: CriteriaProperty -> Value Prelude.Text -> AllowList
mkAllowList criteria name
  = AllowList
      {criteria = criteria, name = name, description = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties AllowList where
  toResourceProperties AllowList {..}
    = ResourceProperties
        {awsType = "AWS::Macie::AllowList",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Criteria" JSON..= criteria, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON AllowList where
  toJSON AllowList {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Criteria" JSON..= criteria, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Criteria" AllowList where
  type PropertyType "Criteria" AllowList = CriteriaProperty
  set newValue AllowList {..} = AllowList {criteria = newValue, ..}
instance Property "Description" AllowList where
  type PropertyType "Description" AllowList = Value Prelude.Text
  set newValue AllowList {..}
    = AllowList {description = Prelude.pure newValue, ..}
instance Property "Name" AllowList where
  type PropertyType "Name" AllowList = Value Prelude.Text
  set newValue AllowList {..} = AllowList {name = newValue, ..}
instance Property "Tags" AllowList where
  type PropertyType "Tags" AllowList = [Tag]
  set newValue AllowList {..}
    = AllowList {tags = Prelude.pure newValue, ..}