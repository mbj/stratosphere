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
  = SourceApiAssociation {description :: (Prelude.Maybe (Value Prelude.Text)),
                          mergedApiIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                          sourceApiAssociationConfig :: (Prelude.Maybe SourceApiAssociationConfigProperty),
                          sourceApiIdentifier :: (Prelude.Maybe (Value Prelude.Text))}
mkSourceApiAssociation :: SourceApiAssociation
mkSourceApiAssociation
  = SourceApiAssociation
      {description = Prelude.Nothing,
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