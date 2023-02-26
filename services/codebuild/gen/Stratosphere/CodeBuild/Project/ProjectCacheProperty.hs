module Stratosphere.CodeBuild.Project.ProjectCacheProperty (
        ProjectCacheProperty(..), mkProjectCacheProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ProjectCacheProperty
  = ProjectCacheProperty {location :: (Prelude.Maybe (Value Prelude.Text)),
                          modes :: (Prelude.Maybe (ValueList Prelude.Text)),
                          type' :: (Value Prelude.Text)}
mkProjectCacheProperty ::
  Value Prelude.Text -> ProjectCacheProperty
mkProjectCacheProperty type'
  = ProjectCacheProperty
      {type' = type', location = Prelude.Nothing,
       modes = Prelude.Nothing}
instance ToResourceProperties ProjectCacheProperty where
  toResourceProperties ProjectCacheProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeBuild::Project.ProjectCache",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "Location" Prelude.<$> location,
                               (JSON..=) "Modes" Prelude.<$> modes]))}
instance JSON.ToJSON ProjectCacheProperty where
  toJSON ProjectCacheProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "Location" Prelude.<$> location,
                  (JSON..=) "Modes" Prelude.<$> modes])))
instance Property "Location" ProjectCacheProperty where
  type PropertyType "Location" ProjectCacheProperty = Value Prelude.Text
  set newValue ProjectCacheProperty {..}
    = ProjectCacheProperty {location = Prelude.pure newValue, ..}
instance Property "Modes" ProjectCacheProperty where
  type PropertyType "Modes" ProjectCacheProperty = ValueList Prelude.Text
  set newValue ProjectCacheProperty {..}
    = ProjectCacheProperty {modes = Prelude.pure newValue, ..}
instance Property "Type" ProjectCacheProperty where
  type PropertyType "Type" ProjectCacheProperty = Value Prelude.Text
  set newValue ProjectCacheProperty {..}
    = ProjectCacheProperty {type' = newValue, ..}