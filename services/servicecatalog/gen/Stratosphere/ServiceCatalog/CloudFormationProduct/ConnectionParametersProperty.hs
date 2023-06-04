module Stratosphere.ServiceCatalog.CloudFormationProduct.ConnectionParametersProperty (
        module Exports, ConnectionParametersProperty(..),
        mkConnectionParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ServiceCatalog.CloudFormationProduct.CodeStarParametersProperty as Exports
import Stratosphere.ResourceProperties
data ConnectionParametersProperty
  = ConnectionParametersProperty {codeStar :: (Prelude.Maybe CodeStarParametersProperty)}
mkConnectionParametersProperty :: ConnectionParametersProperty
mkConnectionParametersProperty
  = ConnectionParametersProperty {codeStar = Prelude.Nothing}
instance ToResourceProperties ConnectionParametersProperty where
  toResourceProperties ConnectionParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::ServiceCatalog::CloudFormationProduct.ConnectionParameters",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "CodeStar" Prelude.<$> codeStar])}
instance JSON.ToJSON ConnectionParametersProperty where
  toJSON ConnectionParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "CodeStar" Prelude.<$> codeStar]))
instance Property "CodeStar" ConnectionParametersProperty where
  type PropertyType "CodeStar" ConnectionParametersProperty = CodeStarParametersProperty
  set newValue ConnectionParametersProperty {}
    = ConnectionParametersProperty
        {codeStar = Prelude.pure newValue, ..}