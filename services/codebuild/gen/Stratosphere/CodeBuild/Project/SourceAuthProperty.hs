module Stratosphere.CodeBuild.Project.SourceAuthProperty (
        SourceAuthProperty(..), mkSourceAuthProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SourceAuthProperty
  = SourceAuthProperty {resource :: (Prelude.Maybe (Value Prelude.Text)),
                        type' :: (Value Prelude.Text)}
mkSourceAuthProperty :: Value Prelude.Text -> SourceAuthProperty
mkSourceAuthProperty type'
  = SourceAuthProperty {type' = type', resource = Prelude.Nothing}
instance ToResourceProperties SourceAuthProperty where
  toResourceProperties SourceAuthProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeBuild::Project.SourceAuth",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes [(JSON..=) "Resource" Prelude.<$> resource]))}
instance JSON.ToJSON SourceAuthProperty where
  toJSON SourceAuthProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes [(JSON..=) "Resource" Prelude.<$> resource])))
instance Property "Resource" SourceAuthProperty where
  type PropertyType "Resource" SourceAuthProperty = Value Prelude.Text
  set newValue SourceAuthProperty {..}
    = SourceAuthProperty {resource = Prelude.pure newValue, ..}
instance Property "Type" SourceAuthProperty where
  type PropertyType "Type" SourceAuthProperty = Value Prelude.Text
  set newValue SourceAuthProperty {..}
    = SourceAuthProperty {type' = newValue, ..}