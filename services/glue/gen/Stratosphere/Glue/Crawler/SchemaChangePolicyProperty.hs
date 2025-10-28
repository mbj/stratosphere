module Stratosphere.Glue.Crawler.SchemaChangePolicyProperty (
        SchemaChangePolicyProperty(..), mkSchemaChangePolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SchemaChangePolicyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-schemachangepolicy.html>
    SchemaChangePolicyProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-schemachangepolicy.html#cfn-glue-crawler-schemachangepolicy-deletebehavior>
                                deleteBehavior :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-schemachangepolicy.html#cfn-glue-crawler-schemachangepolicy-updatebehavior>
                                updateBehavior :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSchemaChangePolicyProperty :: SchemaChangePolicyProperty
mkSchemaChangePolicyProperty
  = SchemaChangePolicyProperty
      {haddock_workaround_ = (), deleteBehavior = Prelude.Nothing,
       updateBehavior = Prelude.Nothing}
instance ToResourceProperties SchemaChangePolicyProperty where
  toResourceProperties SchemaChangePolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Crawler.SchemaChangePolicy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DeleteBehavior" Prelude.<$> deleteBehavior,
                            (JSON..=) "UpdateBehavior" Prelude.<$> updateBehavior])}
instance JSON.ToJSON SchemaChangePolicyProperty where
  toJSON SchemaChangePolicyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DeleteBehavior" Prelude.<$> deleteBehavior,
               (JSON..=) "UpdateBehavior" Prelude.<$> updateBehavior]))
instance Property "DeleteBehavior" SchemaChangePolicyProperty where
  type PropertyType "DeleteBehavior" SchemaChangePolicyProperty = Value Prelude.Text
  set newValue SchemaChangePolicyProperty {..}
    = SchemaChangePolicyProperty
        {deleteBehavior = Prelude.pure newValue, ..}
instance Property "UpdateBehavior" SchemaChangePolicyProperty where
  type PropertyType "UpdateBehavior" SchemaChangePolicyProperty = Value Prelude.Text
  set newValue SchemaChangePolicyProperty {..}
    = SchemaChangePolicyProperty
        {updateBehavior = Prelude.pure newValue, ..}