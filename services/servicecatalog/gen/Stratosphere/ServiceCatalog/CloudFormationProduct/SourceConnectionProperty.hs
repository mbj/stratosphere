module Stratosphere.ServiceCatalog.CloudFormationProduct.SourceConnectionProperty (
        module Exports, SourceConnectionProperty(..),
        mkSourceConnectionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ServiceCatalog.CloudFormationProduct.ConnectionParametersProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SourceConnectionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationproduct-sourceconnection.html>
    SourceConnectionProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationproduct-sourceconnection.html#cfn-servicecatalog-cloudformationproduct-sourceconnection-connectionparameters>
                              connectionParameters :: ConnectionParametersProperty,
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationproduct-sourceconnection.html#cfn-servicecatalog-cloudformationproduct-sourceconnection-type>
                              type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSourceConnectionProperty ::
  ConnectionParametersProperty
  -> Value Prelude.Text -> SourceConnectionProperty
mkSourceConnectionProperty connectionParameters type'
  = SourceConnectionProperty
      {haddock_workaround_ = (),
       connectionParameters = connectionParameters, type' = type'}
instance ToResourceProperties SourceConnectionProperty where
  toResourceProperties SourceConnectionProperty {..}
    = ResourceProperties
        {awsType = "AWS::ServiceCatalog::CloudFormationProduct.SourceConnection",
         supportsTags = Prelude.False,
         properties = ["ConnectionParameters" JSON..= connectionParameters,
                       "Type" JSON..= type']}
instance JSON.ToJSON SourceConnectionProperty where
  toJSON SourceConnectionProperty {..}
    = JSON.object
        ["ConnectionParameters" JSON..= connectionParameters,
         "Type" JSON..= type']
instance Property "ConnectionParameters" SourceConnectionProperty where
  type PropertyType "ConnectionParameters" SourceConnectionProperty = ConnectionParametersProperty
  set newValue SourceConnectionProperty {..}
    = SourceConnectionProperty {connectionParameters = newValue, ..}
instance Property "Type" SourceConnectionProperty where
  type PropertyType "Type" SourceConnectionProperty = Value Prelude.Text
  set newValue SourceConnectionProperty {..}
    = SourceConnectionProperty {type' = newValue, ..}