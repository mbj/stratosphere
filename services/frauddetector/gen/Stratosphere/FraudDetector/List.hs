module Stratosphere.FraudDetector.List (
        List(..), mkList
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data List
  = List {description :: (Prelude.Maybe (Value Prelude.Text)),
          elements :: (Prelude.Maybe (ValueList Prelude.Text)),
          name :: (Value Prelude.Text),
          tags :: (Prelude.Maybe [Tag]),
          variableType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkList :: Value Prelude.Text -> List
mkList name
  = List
      {name = name, description = Prelude.Nothing,
       elements = Prelude.Nothing, tags = Prelude.Nothing,
       variableType = Prelude.Nothing}
instance ToResourceProperties List where
  toResourceProperties List {..}
    = ResourceProperties
        {awsType = "AWS::FraudDetector::List", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Elements" Prelude.<$> elements,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "VariableType" Prelude.<$> variableType]))}
instance JSON.ToJSON List where
  toJSON List {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Elements" Prelude.<$> elements,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "VariableType" Prelude.<$> variableType])))
instance Property "Description" List where
  type PropertyType "Description" List = Value Prelude.Text
  set newValue List {..}
    = List {description = Prelude.pure newValue, ..}
instance Property "Elements" List where
  type PropertyType "Elements" List = ValueList Prelude.Text
  set newValue List {..}
    = List {elements = Prelude.pure newValue, ..}
instance Property "Name" List where
  type PropertyType "Name" List = Value Prelude.Text
  set newValue List {..} = List {name = newValue, ..}
instance Property "Tags" List where
  type PropertyType "Tags" List = [Tag]
  set newValue List {..} = List {tags = Prelude.pure newValue, ..}
instance Property "VariableType" List where
  type PropertyType "VariableType" List = Value Prelude.Text
  set newValue List {..}
    = List {variableType = Prelude.pure newValue, ..}