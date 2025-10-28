module Stratosphere.ServiceCatalog.PortfolioPrincipalAssociation (
        PortfolioPrincipalAssociation(..), mkPortfolioPrincipalAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PortfolioPrincipalAssociation
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioprincipalassociation.html>
    PortfolioPrincipalAssociation {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioprincipalassociation.html#cfn-servicecatalog-portfolioprincipalassociation-acceptlanguage>
                                   acceptLanguage :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioprincipalassociation.html#cfn-servicecatalog-portfolioprincipalassociation-portfolioid>
                                   portfolioId :: (Value Prelude.Text),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioprincipalassociation.html#cfn-servicecatalog-portfolioprincipalassociation-principalarn>
                                   principalARN :: (Value Prelude.Text),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioprincipalassociation.html#cfn-servicecatalog-portfolioprincipalassociation-principaltype>
                                   principalType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPortfolioPrincipalAssociation ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> PortfolioPrincipalAssociation
mkPortfolioPrincipalAssociation
  portfolioId
  principalARN
  principalType
  = PortfolioPrincipalAssociation
      {haddock_workaround_ = (), portfolioId = portfolioId,
       principalARN = principalARN, principalType = principalType,
       acceptLanguage = Prelude.Nothing}
instance ToResourceProperties PortfolioPrincipalAssociation where
  toResourceProperties PortfolioPrincipalAssociation {..}
    = ResourceProperties
        {awsType = "AWS::ServiceCatalog::PortfolioPrincipalAssociation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["PortfolioId" JSON..= portfolioId,
                            "PrincipalARN" JSON..= principalARN,
                            "PrincipalType" JSON..= principalType]
                           (Prelude.catMaybes
                              [(JSON..=) "AcceptLanguage" Prelude.<$> acceptLanguage]))}
instance JSON.ToJSON PortfolioPrincipalAssociation where
  toJSON PortfolioPrincipalAssociation {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PortfolioId" JSON..= portfolioId,
               "PrincipalARN" JSON..= principalARN,
               "PrincipalType" JSON..= principalType]
              (Prelude.catMaybes
                 [(JSON..=) "AcceptLanguage" Prelude.<$> acceptLanguage])))
instance Property "AcceptLanguage" PortfolioPrincipalAssociation where
  type PropertyType "AcceptLanguage" PortfolioPrincipalAssociation = Value Prelude.Text
  set newValue PortfolioPrincipalAssociation {..}
    = PortfolioPrincipalAssociation
        {acceptLanguage = Prelude.pure newValue, ..}
instance Property "PortfolioId" PortfolioPrincipalAssociation where
  type PropertyType "PortfolioId" PortfolioPrincipalAssociation = Value Prelude.Text
  set newValue PortfolioPrincipalAssociation {..}
    = PortfolioPrincipalAssociation {portfolioId = newValue, ..}
instance Property "PrincipalARN" PortfolioPrincipalAssociation where
  type PropertyType "PrincipalARN" PortfolioPrincipalAssociation = Value Prelude.Text
  set newValue PortfolioPrincipalAssociation {..}
    = PortfolioPrincipalAssociation {principalARN = newValue, ..}
instance Property "PrincipalType" PortfolioPrincipalAssociation where
  type PropertyType "PrincipalType" PortfolioPrincipalAssociation = Value Prelude.Text
  set newValue PortfolioPrincipalAssociation {..}
    = PortfolioPrincipalAssociation {principalType = newValue, ..}