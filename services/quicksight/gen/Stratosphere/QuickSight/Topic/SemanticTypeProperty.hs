module Stratosphere.QuickSight.Topic.SemanticTypeProperty (
        SemanticTypeProperty(..), mkSemanticTypeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SemanticTypeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-semantictype.html>
    SemanticTypeProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-semantictype.html#cfn-quicksight-topic-semantictype-falseycellvalue>
                          falseyCellValue :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-semantictype.html#cfn-quicksight-topic-semantictype-falseycellvaluesynonyms>
                          falseyCellValueSynonyms :: (Prelude.Maybe (ValueList Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-semantictype.html#cfn-quicksight-topic-semantictype-subtypename>
                          subTypeName :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-semantictype.html#cfn-quicksight-topic-semantictype-truthycellvalue>
                          truthyCellValue :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-semantictype.html#cfn-quicksight-topic-semantictype-truthycellvaluesynonyms>
                          truthyCellValueSynonyms :: (Prelude.Maybe (ValueList Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-semantictype.html#cfn-quicksight-topic-semantictype-typename>
                          typeName :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-semantictype.html#cfn-quicksight-topic-semantictype-typeparameters>
                          typeParameters :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSemanticTypeProperty :: SemanticTypeProperty
mkSemanticTypeProperty
  = SemanticTypeProperty
      {haddock_workaround_ = (), falseyCellValue = Prelude.Nothing,
       falseyCellValueSynonyms = Prelude.Nothing,
       subTypeName = Prelude.Nothing, truthyCellValue = Prelude.Nothing,
       truthyCellValueSynonyms = Prelude.Nothing,
       typeName = Prelude.Nothing, typeParameters = Prelude.Nothing}
instance ToResourceProperties SemanticTypeProperty where
  toResourceProperties SemanticTypeProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Topic.SemanticType",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FalseyCellValue" Prelude.<$> falseyCellValue,
                            (JSON..=) "FalseyCellValueSynonyms"
                              Prelude.<$> falseyCellValueSynonyms,
                            (JSON..=) "SubTypeName" Prelude.<$> subTypeName,
                            (JSON..=) "TruthyCellValue" Prelude.<$> truthyCellValue,
                            (JSON..=) "TruthyCellValueSynonyms"
                              Prelude.<$> truthyCellValueSynonyms,
                            (JSON..=) "TypeName" Prelude.<$> typeName,
                            (JSON..=) "TypeParameters" Prelude.<$> typeParameters])}
instance JSON.ToJSON SemanticTypeProperty where
  toJSON SemanticTypeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FalseyCellValue" Prelude.<$> falseyCellValue,
               (JSON..=) "FalseyCellValueSynonyms"
                 Prelude.<$> falseyCellValueSynonyms,
               (JSON..=) "SubTypeName" Prelude.<$> subTypeName,
               (JSON..=) "TruthyCellValue" Prelude.<$> truthyCellValue,
               (JSON..=) "TruthyCellValueSynonyms"
                 Prelude.<$> truthyCellValueSynonyms,
               (JSON..=) "TypeName" Prelude.<$> typeName,
               (JSON..=) "TypeParameters" Prelude.<$> typeParameters]))
instance Property "FalseyCellValue" SemanticTypeProperty where
  type PropertyType "FalseyCellValue" SemanticTypeProperty = Value Prelude.Text
  set newValue SemanticTypeProperty {..}
    = SemanticTypeProperty
        {falseyCellValue = Prelude.pure newValue, ..}
instance Property "FalseyCellValueSynonyms" SemanticTypeProperty where
  type PropertyType "FalseyCellValueSynonyms" SemanticTypeProperty = ValueList Prelude.Text
  set newValue SemanticTypeProperty {..}
    = SemanticTypeProperty
        {falseyCellValueSynonyms = Prelude.pure newValue, ..}
instance Property "SubTypeName" SemanticTypeProperty where
  type PropertyType "SubTypeName" SemanticTypeProperty = Value Prelude.Text
  set newValue SemanticTypeProperty {..}
    = SemanticTypeProperty {subTypeName = Prelude.pure newValue, ..}
instance Property "TruthyCellValue" SemanticTypeProperty where
  type PropertyType "TruthyCellValue" SemanticTypeProperty = Value Prelude.Text
  set newValue SemanticTypeProperty {..}
    = SemanticTypeProperty
        {truthyCellValue = Prelude.pure newValue, ..}
instance Property "TruthyCellValueSynonyms" SemanticTypeProperty where
  type PropertyType "TruthyCellValueSynonyms" SemanticTypeProperty = ValueList Prelude.Text
  set newValue SemanticTypeProperty {..}
    = SemanticTypeProperty
        {truthyCellValueSynonyms = Prelude.pure newValue, ..}
instance Property "TypeName" SemanticTypeProperty where
  type PropertyType "TypeName" SemanticTypeProperty = Value Prelude.Text
  set newValue SemanticTypeProperty {..}
    = SemanticTypeProperty {typeName = Prelude.pure newValue, ..}
instance Property "TypeParameters" SemanticTypeProperty where
  type PropertyType "TypeParameters" SemanticTypeProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue SemanticTypeProperty {..}
    = SemanticTypeProperty {typeParameters = Prelude.pure newValue, ..}