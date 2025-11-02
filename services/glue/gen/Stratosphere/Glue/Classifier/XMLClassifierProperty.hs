module Stratosphere.Glue.Classifier.XMLClassifierProperty (
        XMLClassifierProperty(..), mkXMLClassifierProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data XMLClassifierProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-xmlclassifier.html>
    XMLClassifierProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-xmlclassifier.html#cfn-glue-classifier-xmlclassifier-classification>
                           classification :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-xmlclassifier.html#cfn-glue-classifier-xmlclassifier-name>
                           name :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-xmlclassifier.html#cfn-glue-classifier-xmlclassifier-rowtag>
                           rowTag :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkXMLClassifierProperty ::
  Value Prelude.Text -> Value Prelude.Text -> XMLClassifierProperty
mkXMLClassifierProperty classification rowTag
  = XMLClassifierProperty
      {haddock_workaround_ = (), classification = classification,
       rowTag = rowTag, name = Prelude.Nothing}
instance ToResourceProperties XMLClassifierProperty where
  toResourceProperties XMLClassifierProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Classifier.XMLClassifier",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Classification" JSON..= classification, "RowTag" JSON..= rowTag]
                           (Prelude.catMaybes [(JSON..=) "Name" Prelude.<$> name]))}
instance JSON.ToJSON XMLClassifierProperty where
  toJSON XMLClassifierProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Classification" JSON..= classification, "RowTag" JSON..= rowTag]
              (Prelude.catMaybes [(JSON..=) "Name" Prelude.<$> name])))
instance Property "Classification" XMLClassifierProperty where
  type PropertyType "Classification" XMLClassifierProperty = Value Prelude.Text
  set newValue XMLClassifierProperty {..}
    = XMLClassifierProperty {classification = newValue, ..}
instance Property "Name" XMLClassifierProperty where
  type PropertyType "Name" XMLClassifierProperty = Value Prelude.Text
  set newValue XMLClassifierProperty {..}
    = XMLClassifierProperty {name = Prelude.pure newValue, ..}
instance Property "RowTag" XMLClassifierProperty where
  type PropertyType "RowTag" XMLClassifierProperty = Value Prelude.Text
  set newValue XMLClassifierProperty {..}
    = XMLClassifierProperty {rowTag = newValue, ..}