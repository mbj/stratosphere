module Stratosphere.AppSync.SourceApiAssociation.SourceApiAssociationConfigProperty (
        SourceApiAssociationConfigProperty(..),
        mkSourceApiAssociationConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SourceApiAssociationConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-sourceapiassociation-sourceapiassociationconfig.html>
    SourceApiAssociationConfigProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-sourceapiassociation-sourceapiassociationconfig.html#cfn-appsync-sourceapiassociation-sourceapiassociationconfig-mergetype>
                                        mergeType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSourceApiAssociationConfigProperty ::
  SourceApiAssociationConfigProperty
mkSourceApiAssociationConfigProperty
  = SourceApiAssociationConfigProperty
      {haddock_workaround_ = (), mergeType = Prelude.Nothing}
instance ToResourceProperties SourceApiAssociationConfigProperty where
  toResourceProperties SourceApiAssociationConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppSync::SourceApiAssociation.SourceApiAssociationConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "MergeType" Prelude.<$> mergeType])}
instance JSON.ToJSON SourceApiAssociationConfigProperty where
  toJSON SourceApiAssociationConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "MergeType" Prelude.<$> mergeType]))
instance Property "MergeType" SourceApiAssociationConfigProperty where
  type PropertyType "MergeType" SourceApiAssociationConfigProperty = Value Prelude.Text
  set newValue SourceApiAssociationConfigProperty {..}
    = SourceApiAssociationConfigProperty
        {mergeType = Prelude.pure newValue, ..}