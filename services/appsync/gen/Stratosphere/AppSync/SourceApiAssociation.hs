module Stratosphere.AppSync.SourceApiAssociation (
        module Exports, SourceApiAssociation(..), mkSourceApiAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppSync.SourceApiAssociation.SourceApiAssociationConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SourceApiAssociation
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-sourceapiassociation.html>
    SourceApiAssociation {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-sourceapiassociation.html#cfn-appsync-sourceapiassociation-description>
                          description :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-sourceapiassociation.html#cfn-appsync-sourceapiassociation-mergedapiidentifier>
                          mergedApiIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-sourceapiassociation.html#cfn-appsync-sourceapiassociation-sourceapiassociationconfig>
                          sourceApiAssociationConfig :: (Prelude.Maybe SourceApiAssociationConfigProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-sourceapiassociation.html#cfn-appsync-sourceapiassociation-sourceapiidentifier>
                          sourceApiIdentifier :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSourceApiAssociation :: SourceApiAssociation
mkSourceApiAssociation
  = SourceApiAssociation
      {haddock_workaround_ = (), description = Prelude.Nothing,
       mergedApiIdentifier = Prelude.Nothing,
       sourceApiAssociationConfig = Prelude.Nothing,
       sourceApiIdentifier = Prelude.Nothing}
instance ToResourceProperties SourceApiAssociation where
  toResourceProperties SourceApiAssociation {..}
    = ResourceProperties
        {awsType = "AWS::AppSync::SourceApiAssociation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "MergedApiIdentifier" Prelude.<$> mergedApiIdentifier,
                            (JSON..=) "SourceApiAssociationConfig"
                              Prelude.<$> sourceApiAssociationConfig,
                            (JSON..=) "SourceApiIdentifier" Prelude.<$> sourceApiIdentifier])}
instance JSON.ToJSON SourceApiAssociation where
  toJSON SourceApiAssociation {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "MergedApiIdentifier" Prelude.<$> mergedApiIdentifier,
               (JSON..=) "SourceApiAssociationConfig"
                 Prelude.<$> sourceApiAssociationConfig,
               (JSON..=) "SourceApiIdentifier" Prelude.<$> sourceApiIdentifier]))
instance Property "Description" SourceApiAssociation where
  type PropertyType "Description" SourceApiAssociation = Value Prelude.Text
  set newValue SourceApiAssociation {..}
    = SourceApiAssociation {description = Prelude.pure newValue, ..}
instance Property "MergedApiIdentifier" SourceApiAssociation where
  type PropertyType "MergedApiIdentifier" SourceApiAssociation = Value Prelude.Text
  set newValue SourceApiAssociation {..}
    = SourceApiAssociation
        {mergedApiIdentifier = Prelude.pure newValue, ..}
instance Property "SourceApiAssociationConfig" SourceApiAssociation where
  type PropertyType "SourceApiAssociationConfig" SourceApiAssociation = SourceApiAssociationConfigProperty
  set newValue SourceApiAssociation {..}
    = SourceApiAssociation
        {sourceApiAssociationConfig = Prelude.pure newValue, ..}
instance Property "SourceApiIdentifier" SourceApiAssociation where
  type PropertyType "SourceApiIdentifier" SourceApiAssociation = Value Prelude.Text
  set newValue SourceApiAssociation {..}
    = SourceApiAssociation
        {sourceApiIdentifier = Prelude.pure newValue, ..}