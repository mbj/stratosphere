module Stratosphere.ResourceExplorer2.Index (
        Index(..), mkIndex
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Index
  = Index {tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
           type' :: (Value Prelude.Text)}
mkIndex :: Value Prelude.Text -> Index
mkIndex type' = Index {type' = type', tags = Prelude.Nothing}
instance ToResourceProperties Index where
  toResourceProperties Index {..}
    = ResourceProperties
        {awsType = "AWS::ResourceExplorer2::Index",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Index where
  toJSON Index {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Tags" Index where
  type PropertyType "Tags" Index = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue Index {..} = Index {tags = Prelude.pure newValue, ..}
instance Property "Type" Index where
  type PropertyType "Type" Index = Value Prelude.Text
  set newValue Index {..} = Index {type' = newValue, ..}