module Stratosphere.EC2.Instance.SsmAssociationProperty (
        module Exports, SsmAssociationProperty(..),
        mkSsmAssociationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.Instance.AssociationParameterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SsmAssociationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-ssmassociation.html>
    SsmAssociationProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-ssmassociation.html#cfn-ec2-instance-ssmassociation-associationparameters>
                            associationParameters :: (Prelude.Maybe [AssociationParameterProperty]),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-ssmassociation.html#cfn-ec2-instance-ssmassociation-documentname>
                            documentName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSsmAssociationProperty ::
  Value Prelude.Text -> SsmAssociationProperty
mkSsmAssociationProperty documentName
  = SsmAssociationProperty
      {haddock_workaround_ = (), documentName = documentName,
       associationParameters = Prelude.Nothing}
instance ToResourceProperties SsmAssociationProperty where
  toResourceProperties SsmAssociationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::Instance.SsmAssociation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DocumentName" JSON..= documentName]
                           (Prelude.catMaybes
                              [(JSON..=) "AssociationParameters"
                                 Prelude.<$> associationParameters]))}
instance JSON.ToJSON SsmAssociationProperty where
  toJSON SsmAssociationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DocumentName" JSON..= documentName]
              (Prelude.catMaybes
                 [(JSON..=) "AssociationParameters"
                    Prelude.<$> associationParameters])))
instance Property "AssociationParameters" SsmAssociationProperty where
  type PropertyType "AssociationParameters" SsmAssociationProperty = [AssociationParameterProperty]
  set newValue SsmAssociationProperty {..}
    = SsmAssociationProperty
        {associationParameters = Prelude.pure newValue, ..}
instance Property "DocumentName" SsmAssociationProperty where
  type PropertyType "DocumentName" SsmAssociationProperty = Value Prelude.Text
  set newValue SsmAssociationProperty {..}
    = SsmAssociationProperty {documentName = newValue, ..}