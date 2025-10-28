module Stratosphere.QuickSight.Topic.SemanticEntityTypeProperty (
        SemanticEntityTypeProperty(..), mkSemanticEntityTypeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SemanticEntityTypeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-semanticentitytype.html>
    SemanticEntityTypeProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-semanticentitytype.html#cfn-quicksight-topic-semanticentitytype-subtypename>
                                subTypeName :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-semanticentitytype.html#cfn-quicksight-topic-semanticentitytype-typename>
                                typeName :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-semanticentitytype.html#cfn-quicksight-topic-semanticentitytype-typeparameters>
                                typeParameters :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSemanticEntityTypeProperty :: SemanticEntityTypeProperty
mkSemanticEntityTypeProperty
  = SemanticEntityTypeProperty
      {haddock_workaround_ = (), subTypeName = Prelude.Nothing,
       typeName = Prelude.Nothing, typeParameters = Prelude.Nothing}
instance ToResourceProperties SemanticEntityTypeProperty where
  toResourceProperties SemanticEntityTypeProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Topic.SemanticEntityType",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SubTypeName" Prelude.<$> subTypeName,
                            (JSON..=) "TypeName" Prelude.<$> typeName,
                            (JSON..=) "TypeParameters" Prelude.<$> typeParameters])}
instance JSON.ToJSON SemanticEntityTypeProperty where
  toJSON SemanticEntityTypeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SubTypeName" Prelude.<$> subTypeName,
               (JSON..=) "TypeName" Prelude.<$> typeName,
               (JSON..=) "TypeParameters" Prelude.<$> typeParameters]))
instance Property "SubTypeName" SemanticEntityTypeProperty where
  type PropertyType "SubTypeName" SemanticEntityTypeProperty = Value Prelude.Text
  set newValue SemanticEntityTypeProperty {..}
    = SemanticEntityTypeProperty
        {subTypeName = Prelude.pure newValue, ..}
instance Property "TypeName" SemanticEntityTypeProperty where
  type PropertyType "TypeName" SemanticEntityTypeProperty = Value Prelude.Text
  set newValue SemanticEntityTypeProperty {..}
    = SemanticEntityTypeProperty {typeName = Prelude.pure newValue, ..}
instance Property "TypeParameters" SemanticEntityTypeProperty where
  type PropertyType "TypeParameters" SemanticEntityTypeProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue SemanticEntityTypeProperty {..}
    = SemanticEntityTypeProperty
        {typeParameters = Prelude.pure newValue, ..}