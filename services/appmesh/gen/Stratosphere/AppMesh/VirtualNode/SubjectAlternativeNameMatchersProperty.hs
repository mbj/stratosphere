module Stratosphere.AppMesh.VirtualNode.SubjectAlternativeNameMatchersProperty (
        SubjectAlternativeNameMatchersProperty(..),
        mkSubjectAlternativeNameMatchersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SubjectAlternativeNameMatchersProperty
  = SubjectAlternativeNameMatchersProperty {exact :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSubjectAlternativeNameMatchersProperty ::
  SubjectAlternativeNameMatchersProperty
mkSubjectAlternativeNameMatchersProperty
  = SubjectAlternativeNameMatchersProperty {exact = Prelude.Nothing}
instance ToResourceProperties SubjectAlternativeNameMatchersProperty where
  toResourceProperties SubjectAlternativeNameMatchersProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualNode.SubjectAlternativeNameMatchers",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Exact" Prelude.<$> exact])}
instance JSON.ToJSON SubjectAlternativeNameMatchersProperty where
  toJSON SubjectAlternativeNameMatchersProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Exact" Prelude.<$> exact]))
instance Property "Exact" SubjectAlternativeNameMatchersProperty where
  type PropertyType "Exact" SubjectAlternativeNameMatchersProperty = ValueList Prelude.Text
  set newValue SubjectAlternativeNameMatchersProperty {}
    = SubjectAlternativeNameMatchersProperty
        {exact = Prelude.pure newValue, ..}